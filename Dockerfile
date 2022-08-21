FROM nasqueron/nginx-php-fpm


RUN mkdir /app

COPY . . /app/

WORKDIR /app

RUN chmod 777 /app/order.txt

COPY ./default /etc/nginx/sites-enabled/
