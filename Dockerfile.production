# Use the official Node.js v18.17.0 image as the base image
FROM node:18.17.0-alpine

# Set the working directory inside the container
WORKDIR /app
# Copy package.json and package-lock.json (or yarn.lock) to the working directory
COPY package*.json ./
# Install dependencies
RUN npm install


# Copy the rest of the application files to the working directory
COPY next.config.js ./next.config.js
COPY public ./public
COPY src ./src

# Build the Next.js application for production
RUN npm run build

# Expose the port that Next.js uses (default: 3000)
EXPOSE 3000

# Set the command to run the Next.js application when the container starts
CMD ["npm", "run", "dev"]
