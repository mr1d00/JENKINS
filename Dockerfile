# Use the official Nginx image from Docker Hub
FROM nginx:latest

# Copy website files into the appropriate directory for Nginx to serve
COPY ./index.html /usr/share/nginx/html

# Expose port 80 (default HTTP port)
EXPOSE 80

# Run Nginx in the foreground (default behavior for official Nginx image)
CMD ["nginx", "-g", "daemon off;"]
