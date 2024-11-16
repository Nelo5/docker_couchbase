# Используем официальный образ Couchbase
FROM couchbase:latest

# Устанавливаем необходимые переменные окружения
ENV COUCHBASE_USER=admin
ENV COUCHBASE_PASSWORD=password
ENV COUCHBASE_BUCKET=mybucket

# Открываем необходимые порты
EXPOSE 8091 8092 8093 8094 11210 11211

# Копируем скрипт и запускаем его
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

# Определяем команду для запуска Couchbase
CMD ["couchbase-server"]

