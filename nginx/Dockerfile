FROM nginx:1.19-alpine 

ARG PORT
ARG SERVICE_NAME

RUN rm /etc/nginx/conf.d/default.conf
COPY ./nginx.conf /etc/nginx/conf.d
RUN sed -i "s/<PORT>/${PORT}/g" /etc/nginx/conf.d/nginx.conf \
    && sed -i "s/<SERVICE_NAME>/${SERVICE_NAME}/g" /etc/nginx/conf.d/nginx.conf