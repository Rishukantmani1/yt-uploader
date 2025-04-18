FROM node:18

# Set working directory
WORKDIR /yt-uploader

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy all files
COPY . .

# Expose port
EXPOSE 5000

# Run the app
CMD ["node", "index.js"]
