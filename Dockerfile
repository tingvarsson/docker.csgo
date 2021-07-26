FROM tingvarsson/steamcmd:latest
LABEL maintainer Thomas Ingvarsson <ingvarsson.thomas@gmail.com>

ENV FPS_MAX=500 \
    TICKRATE=128 \
    PORT=27015 \
    TV_PORT=27020 \
    MAX_PLAYERS=14 \
    TOKEN=0 \
    RCON_PASSWORD="changeme" \
    SV_PASSWORD="changeme" \
    START_MAP="de_dust2" \
    MAP_GROUP="mg_active" \
    GAME_TYPE=0 \
    GAME_MODE=1 \
    STARTUP_OPTIONS=""

ENV CSGO_DIR $HOME/csgo-ds

COPY --chown=$USER start.sh $HOME/start.sh
COPY --chown=$USER csgo_update.txt $HOME/csgo_update.txt

WORKDIR $HOME

CMD ["./start.sh"]

EXPOSE 27015/tcp 27015/udp 27020/udp
