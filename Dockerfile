# Use the official NGINX base image
FROM nginx:latest

# Remove the default NGINX configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom NGINX configuration file
COPY nginx.conf /etc/nginx/conf.d/

# Copy your HTML files to the NGINX web root directory
COPY html/ /usr/share/nginx/html/

# Expose the default HTTP port
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
