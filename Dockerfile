FROM alpine:latest
WORKDIR /app
COPY index.html
EXPOSE 80
CMD ["sh", "-c", "echo 'Hello, World!' > /app/index.html $$ exec httpd -DFOREGROUND"]