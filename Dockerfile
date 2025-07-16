# Use Node.js base image
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and install deps
COPY package*.json ./
RUN npm install

# Copy app code
COPY . .

# Expose port and start app
EXPOSE 3000
CMD [ "node", "index.js" ]

