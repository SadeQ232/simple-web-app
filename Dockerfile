FROM nginx:alpine

COPY . . /usr/share/nginx/html/

RUN chown -R nginx:nginx /usr/share/nginx/html/


RUN echo "module.exports = { PORT: $PORT }" > config.js
EXPOSE 8181

CMD ["nginx", "start"]