# Use Ubuntu as the base image
FROM ubuntu:latest

# Install Nginx and Git
RUN apt-get update && \
    apt-get install -y nginx git && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory to the Nginx default root
WORKDIR /var/www/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx in the foreground (keep the container running)
CMD ["nginx", "-g", "daemon off;"]
