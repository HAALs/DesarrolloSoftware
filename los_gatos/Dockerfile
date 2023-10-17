FROM alpine:3.18
RUN apk upgrade --no-cache
RUN apk add python3
RUN apk add py3-pip
RUN apk add pkgconfig
RUN apk add --virtual build-deps gcc python3-dev musl-dev
RUN apk add --no-cache mariadb-dev
COPY ./ /opt/app/los_gatos

WORKDIR /opt/app/los_gatos
RUN pip3 install -r requirements.txt
# SERVER CONFIG
ENV SERVER_PORT "8000"
ENV SERVER_HOST "0.0.0.0"
# DATABASE CONFIG
ENV DB_NAME "los_gatos_db"
ENV DB_USER "root"
ENV DB_PASS "1234567890"
ENV DB_HOST "los_gatos-db-container" 
ENV DB_PORT "3306" 

CMD python3 manage.py runserver "$SERVER_HOST:$SERVER_PORT"