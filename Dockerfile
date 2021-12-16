FROM nginx:stable-alpine
RUN apk --no-cache add ca-certificates wget tar unzip

# && wget -O freeboard.tar.gz https://api.github.com/repos/Freeboard/freeboard/tarball/master 
# && tar -xzvf /free.tar.gz -C /usr/share/nginx/html --strip-components=1
#WORKDIR WORKDIR /usr/src/app
#WORKDIR /Docker/freeboard
#WoRKDIR /Docker/freeboard
WORKDIR  /usr/share/nginx/html
RUN ls -l
#RUN unzip -d /kong.zip  /usr/share/nginx/html 
ADD kong.zip  .
ADD  free.tar.gz /usr/share/nginx/html
#RUN tar -xzvf free.tar.gz  -C .
RUN ls -l
COPY /netpie-freeboard-master/  /usr/share/nginx/html/  
RUN ls -l
#CP .  /usr/share/nginx/html
