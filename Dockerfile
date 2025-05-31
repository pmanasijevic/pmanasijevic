# small NGINX version
FROM nginx:alpine

# Coping HTML from app/ folder in default NGINX root 
COPY app/ /usr/share/nginx/html
