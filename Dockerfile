# Backend Dockerfile for Railway deployment
FROM node:18-alpine

WORKDIR /app

# Copy package files
COPY backend/package*.json ./

# Install dependencies
RUN npm install --production

# Copy backend source code
COPY backend/src ./src
COPY backend/.env* ./

# Expose port
EXPOSE 8000

# Start server
CMD ["node", "src/server.js"]
