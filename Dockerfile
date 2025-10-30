# Use Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy rest of the project
COPY . .

# Build the project
RUN npm run build

# Expose Vite preview port
EXPOSE 4173

# Start the app
CMD ["npm", "run", "start"]
