# 1. Specify the base OS and runtime image
FROM node:latest

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy dependency files and install packages
COPY package*.json ./
RUN npm install --production

# 4. Copy the rest of your application source code
COPY . .

# 5. Document the port the app listens on
EXPOSE 3000

# 6. Define the default command to run when the container starts
CMD ["node", "src/index.js"]

