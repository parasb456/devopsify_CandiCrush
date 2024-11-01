# Use a Node.js image for development
FROM node:16

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package.json package-lock.json* ./

# Install dependencies
RUN npm install

# Copy all application files, including src and public
COPY . .

# Expose the development port
EXPOSE 3000

# Start the React development server
CMD ["npm", "start"]
