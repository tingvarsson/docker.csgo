# Counter-Strike Global Offensive Dedicated Server
#
# Version 1.0.0

FROM tingvarsson/steamcmd:latest
MAINTAINER Thomas Ingvarsson <ingvarsson.thomas@gmail.com>

ENV CSGO_DIR $HOME/csgo

ADD start.sh $CSGO_DIR/start.sh

WORKDIR $CSGO_DIR

EXPOSE 27015

CMD ["./start.sh"]