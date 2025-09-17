# My Docker Assignment - Codin 1 Website

Hi! This is my assignment where I set up a React app using Docker. It shows "Codin 1" on localhost:7775.

## About Me
- **Name:** Kiranjot Kaur
- **Assignment:** Assignment 11 - Docker Setup
- **Container Name:** kaur_kiranjot_coding_assignment11

## What This Does

I made a simple React website that just shows "Codin 1" in a big heading. The whole thing runs inside a Docker container on port 7775 like the assignment asked for.


## How to Run My Project

### Step 1: Build the Docker image

docker build -t kaur_kiranjot_coding_assignment11 .

### Step 2: Run the container

docker run -p 7775:7775 --name kaur_kiranjot_coding_assignment11 kaur_kiranjot_coding_assignment11


### Step 3: Check it out
Go to your browser and type: http://localhost:7775

You should see "Codin 1" on the page!

### Step 4: Push to Git
As the final step, I committed my changes and pushed the project to my Git repository:
git init
git add .
git commit -m "Completed Docker Assignment 11"
git push origin master


## My Docker Setup

**Dockerfile explanation:**
- FROM node:20 → Uses the latest Node.js LTS image.

- WORKDIR /kaur_kiranjot_site → Creates and switches into a working directory inside the container.

- COPY package.json ./* → Copies dependency files first so Docker can cache npm install for faster builds.

- RUN npm install → Installs all project dependencies.

- COPY . . → Copies the rest of the application code.

- EXPOSE 7775 → Makes port 7775 available so the app can be accessed from the host machine.

- CMD ["npm", "start"] → Runs the React development server. Because the start script in package.json is set to cross-env PORT=7775 react-scripts start, the app will launch on port 7775.

**Package.json setup:**
I changed the start script to use port 7775:
"start": "cross-env PORT=7775 react-scripts start"
This makes sure React runs on the right port.


**Port already being used?**

docker run -p 7775 --name kaur_kiranjot_coding_assignment11 kaur_kiranjot_coding_assignment11



