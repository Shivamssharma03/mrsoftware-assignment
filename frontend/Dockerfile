# 1. Build Stage
FROM node:18-alpine AS build

WORKDIR /app

COPY package*.json ./
RUN npm install --legacy-peer-deps
COPY . .

RUN npm run build

# 2. NGINX Stage
FROM nginx:alpine

# Remove default config
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom reverse proxy config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy frontend build files
COPY --from=build /app/dist /usr/share/nginx/html

# Expose port for frontend
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
