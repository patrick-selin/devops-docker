# blog-app BACK PRODUCTION

FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies, including cross-env
RUN npm install cross-env

# Copy the rest of the application files to the container
COPY . .

# Expose port 3003
EXPOSE 3003

# Command to run the application
CMD ["npm", "start"]
