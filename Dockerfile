# Use official Node image
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy dependency files first (better caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy remaining source code
COPY . .

# Expose application port (change if needed)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]