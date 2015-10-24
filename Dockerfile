FROM java:8
MAINTAINER Vincent Gaudissart (gaudissart@gmail.com)

WORKDIR /opt/graphhopper

RUN wget https://graphhopper.com/public/releases/graphhopper-web-0.5.0-bin.zip && \
  unzip *.zip && \
  rm *.zip

ADD assets ./

VOLUME ["/data", "/cache"]

EXPOSE 8989

CMD ["/opt/graphhopper/start.sh"]
