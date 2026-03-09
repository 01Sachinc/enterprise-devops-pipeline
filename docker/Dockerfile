# -------------------------------------------------------------------
# Project: Enterprise DevOps Pipeline
# Author: Sachin C S
# -------------------------------------------------------------------

FROM nginx:stable-alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Copy application files to Nginx default public directory
COPY app/ .

# Expose HTTP port
EXPOSE 80

# Run Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
