
# Step 1: Use Node.js base image
FROM node:22-alpine

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy dependency files first
COPY package*.json ./

# Step 4: Install dependencies
RUN npm ci

# Step 5: Copy application source code
COPY src ./src

# Step 6: Expose application port
EXPOSE 3000

# Step 7: Start application
CMD ["npm", "start"]