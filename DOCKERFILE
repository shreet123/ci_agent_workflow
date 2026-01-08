# Use the official lightweight nginx image
FROM nginx:alpine

# Remove default nginx content (optional) and copy current repo files to nginx html directory
RUN rm -rf /usr/share/nginx/html/*
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx (foreground)
CMD ["nginx", "-g", "daemon off;"]