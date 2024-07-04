# Use an official Ubuntu runtime as a parent image
FROM ubuntu:bionic

# Set the working directory
WORKDIR /app

# Copy project files into the container
COPY . .

# Example: Install dependencies and start application
RUN apt-get update && \
    apt-get install -y nodejs npm && \
    npm install && \
    npm run build

# Example: Set the default command to run the app
CMD ["npm", "start"]
