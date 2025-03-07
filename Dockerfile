# Use official Node.js image
FROM node:20

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project
COPY . .

# Expose the necessary ports
EXPOSE 3000 4000

# Default command (overridden in docker-compose.yml)
CMD ["npx","nodemon", "server.js"]
