# Serve the portfolio page with a small web server
FROM nginx:alpine

# Copy only the site files into nginx's web root
COPY index.html style.css /usr/share/nginx/html/

EXPOSE 80
