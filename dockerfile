
# Use Node.js 20 (LTS) as the base image
FROM node:20

#Define the working directory inside the container
WORKDIR /g

# Copy dependency definition files first
COPY package*.json ./

# Install all required dependencies
RUN npm install

#  Copy the rest of the application source code
COPY . .

#  Make port 7775 available to the host machine
EXPOSE 7775

# Start the React development server
CMD ["npm", "start"]




