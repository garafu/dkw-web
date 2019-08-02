FROM nginx:1.17-alpine

# COPY nginx.conf /etc/nginx/nginx.conf
COPY . /home/nginx
RUN mv docker-entrypoint.sh /usr/local/bin; \
    chmode +x /usr/local/bin/docker-entrypoint.sh;
    # mkdir -p /data/www && \
    # cd /home/nginx && \
    
    # mv nginx.conf /etc/nginx && \

# VOLUME [ "/data/www" ]

ENTRYPOINT [ "docker-entrypoint.sh" ]
CMD [ "nginx", "-g", "daemon off;" ]