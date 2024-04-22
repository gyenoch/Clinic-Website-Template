# Use a lightweight web server image as the base image
FROM nginx:alpine

# Copy the contents of the 'app' folder to the nginx document root
COPY ./app /usr/share/nginx/html

# Expose port 80 to allow incoming traffic to the web server
EXPOSE 80

# Command to start the nginx web server when the container starts
CMD ["nginx", "-g", "daemon off;"]

