# Node.js backend container
FROM node:20-alpine

WORKDIR /app

# Copy dependency manifests first for better build caching.
COPY package*.json ./
RUN npm ci --omit=dev

COPY . .

ENV NODE_ENV=production
ENV PORT=5000

EXPOSE 5000

# Update this if your backend entry point or start script differs.
CMD ["npm", "start"]
