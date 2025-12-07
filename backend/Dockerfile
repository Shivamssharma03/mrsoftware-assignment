# 1. Use the official Node.js image
FROM node:20-alpine


# 2. Set application working directory inside container
WORKDIR /app

# 3. Copy package.json and package-lock.json first (better for caching)
COPY package*.json ./

# 4. Install dependencies
RUN npm install --production

# 5. Copy source code to container
COPY . .

# 6. Expose backend port
EXPOSE 8888

# 7. Start the backend service
CMD ["npm", "start"]
