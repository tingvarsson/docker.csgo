#!/bin/bash

STEAMCMD_ARGS=" +login anonymous "
STEAMCMD_ARGS+="+force_install_dir ${CSGO_DIR} "
STEAMCMD_ARGS+="+app_update 740 "
STEAMCMD_ARGS+="+quit"
echo "STEAMCMD_ARGS=${STEAMCMD_ARGS}"

"${STEAMCMD_DIR}/steamcmd.sh" ${STEAMCMD_ARGS}

SRCDS_RUN_ARGS=" -game csgo "
SRCDS_RUN_ARGS+="-autoupdate "
SRCDS_RUN_ARGS+="-console "
SRCDS_RUN_ARGS+="-net_port_try 1 "
SRCDS_RUN_ARGS+="-steam_dir ${STEAMCMD_DIR} "
SRCDS_RUN_ARGS+="-steamcmd_script ${HOME}/csgo_update.txt "
SRCDS_RUN_ARGS+="-usercon "
SRCDS_RUN_ARGS+="+fps_max ${FPS_MAX} "
SRCDS_RUN_ARGS+="-tickrate ${TICKRATE} "
SRCDS_RUN_ARGS+="-port ${PORT} "
SRCDS_RUN_ARGS+="+tv_port ${TV_PORT} "
SRCDS_RUN_ARGS+="-maxplayers_override ${MAX_PLAYERS} "
SRCDS_RUN_ARGS+="+game_type ${GAME_TYPE} "
SRCDS_RUN_ARGS+="+game_mode ${GAME_MODE} "
SRCDS_RUN_ARGS+="+mapgroup ${MAP_GROUP} "
SRCDS_RUN_ARGS+="+map ${START_MAP} "
SRCDS_RUN_ARGS+="+sv_setsteamaccount ${TOKEN} "
SRCDS_RUN_ARGS+="+rcon_password ${RCON_PASSWORD} "
SRCDS_RUN_ARGS+="+sv_password ${SV_PASSWORD} "
SRCDS_RUN_ARGS+="${STARTUP_OPTIONS}"
echo "SRCDS_RUN_ARGS=${SRCDS_RUN_ARGS}"

"${CSGO_DIR}/srcds_run" ${SRCDS_RUN_ARGS}
