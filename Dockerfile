# Dockerfile
FROM alpine:latest
COPY script.sh /app/script.sh
RUN chmod +x /app/script.sh
CMD ["/app/script.sh"]

