# # Use the official Node.js 16 image
# FROM node:16

# # Set the working directory in the container
# WORKDIR /app

# # Copy package.json and package-lock.json
# COPY package*.json ./

# # Copy the entire React app source code to the container
# COPY . .

# # Install dependencies
# RUN npm install


# # Build the React app
# RUN npm run build

# # Expose port 3000 (the port your Node.js app runs on)
# EXPOSE 3000

# # Start the Node.js app
# CMD ["npm", "start"]

# Use the official Ubuntu 20.04 LTS image as the base image
FROM ubuntu:20.04

# Update and install necessary dependencies
RUN apt-get update \
    && apt-get install -y curl \
    && curl -fsSL https://deb.nodesource.com/setup_14.x | bash - \
    && apt-get install -y nodejs

# Set the working directory in the container
WORKDIR /usr/src/app

COPY . .
