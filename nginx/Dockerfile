##############################
# Docker Image Configuration #
##############################

# Use official Nginx base image
FROM nginx:latest

# Copy custom Nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy custom HTML file to serve
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 and 3000
EXPOSE 80 3000
