FROM httpd
RUN apt-get update
RUN apt-get install -y git
WORKDIR /tmp
RUN git clone https://github.com/lefterisALEX/authentication-portal.git
RUN cp -r authentication-portal/* /usr/local/apache2/htdocs/
WORKDIR /usr/local/apache2/htdocs/


