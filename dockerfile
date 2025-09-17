
# This line of code uses Node.js LTS as base image
FROM node:20

# This line of code sets working directory inside container
WORKDIR /g

# This line of code copy package files first to install dependencies
COPY package*.json ./

# This will Install dependencies
RUN npm install

# This line of code copy all project files into container
COPY . .

# this will expose port 7775
EXPOSE 7775

# this will start the React app
CMD ["npm", "start"]




