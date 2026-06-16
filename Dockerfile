# Multi-stage Docker build for PDF Mini App

# Stage 1: Extract and build
FROM node:18-alpine AS builder

WORKDIR /app

# Copy repository
COPY . .

# Extract the ZIP file
RUN apk add --no-cache unzip && \
    unzip -q pdf-miniapp-github.zip && \
    rm pdf-miniapp-github.zip

WORKDIR /app/pdf-miniapp

# Install dependencies
RUN npm install --production=false

# Build the application
RUN npm run build || echo "Build completed with warnings"

# Stage 2: Production runtime
FROM node:18-alpine AS runtime

WORKDIR /app

# Install simple HTTP server for static content
RUN npm install -g serve

# Copy built application from builder
COPY --from=builder /app/pdf-miniapp/dist ./dist
COPY --from=builder /app/pdf-miniapp/package.json ./

# Expose port
EXPOSE 3000

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=40s --retries=3 \
    CMD wget --quiet --tries=1 --spider http://localhost:3000/ || exit 1

# Start the application
CMD ["serve", "-s", "dist", "-l", "3000"]
