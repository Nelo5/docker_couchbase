FROM couchbase/server:community

LABEL maintainer="furmit@mail.ru"

ENV CB_USERNAME=admin
ENV CB_PASSWORD=adminpassword
ENV CB_BUCKET=default
ENV CB_BUCKET_PASSWORD=bucketpassword

EXPOSE 8101 8102 8103
