FROM nginx:alpine
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 8080 10001 10002 10003 2004
CMD ["nginx", "-g", "daemon off;"]
