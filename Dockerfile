# Use a simple HTTP server
FROM nginx:alpine

# Copy static site content
COPY . /usr/share/nginx/html

# Tell Cloud Run which port to expect
ENV PORT=8080

# Update Nginx to listen on port 8080 instead of 80
RUN sed -i 's/80/8080/g' /etc/nginx/conf.d/default.conf

# Expose the port
EXPOSE 8080

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]

