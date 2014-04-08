# node iamge
# VERSION 0.1

FROM ubuntu:12.10
MAINTAINER Elliot Winard enw@caveteen.com

# install python3
RUN apt-get -q update
RUN apt-get install -y python3

# copy html
ADD talk/ /talk

# run http server on port 8080
EXPOSE 8080
WORKDIR /talk
CMD python3 -m http.server 8080
