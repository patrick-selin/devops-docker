# 3.8Node.js blog-app API - AFTER 

FROM node:20 AS builder

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci --only=production

FROM node:20-alpine

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app .

RUN addgroup -S nodejs && adduser -S nodejs -G nodejs

RUN chown -R nodejs:nodejs /usr/src/app

USER nodejs

EXPOSE 3005

CMD ["npm", "run", "start"]
