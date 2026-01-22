# Step 1: Use a tiny Nginx server as the base
FROM nginx:alpine

# Step 2: Remove any default files that Nginx comes with
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy YOUR html file from your computer into the server
COPY ./index.html /usr/share/nginx/html/index.html

# Step 4: Tell the world that this container uses port 80
EXPOSE 80

# Step 5: Start Nginx when the container turns on
CMD ["nginx", "-g", "daemon off;"]
