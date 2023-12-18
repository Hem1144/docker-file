# Use a Node.js base image
FROM node:latest
COPY . home/app
# Set the working directory
WORKDIR /home/app/
# Install application dependencies
RUN npm install
# Copy the rest of the application files
EXPOSE 8000
# Set the default command to start your application
CMD ["node", "index.js"]
