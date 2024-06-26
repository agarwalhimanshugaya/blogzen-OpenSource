# Use the official Nginx image from the Docker Hub
FROM nginx:latest

# Remove the default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy the current directory contents into the Nginx web directory
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Run Nginx in the foreground (this ensures the container stays running)
CMD ["nginx", "-g", "daemon off;"]