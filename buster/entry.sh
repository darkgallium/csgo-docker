#!/bin/bash

# Believe it or not, if you don't do this srcds_run shits itself
cd ${STEAMAPPDIR}

# Run CSGO without autoupdate
bash "${STEAMAPPDIR}/srcds_run" -game "${STEAMAPP}" -console -log on \
			-steam_dir "${STEAMCMDDIR}" \
			-usercon \
			-tickrate "${SRCDS_TICKRATE}" \
			-port "${SRCDS_PORT}" \
			+tv_port "${SRCDS_TV_PORT}" \
			+clientport "${SRCDS_CLIENT_PORT}" \
			#-maxplayers_override "${SRCDS_MAXPLAYERS}" \
			+game_type "${SRCDS_GAMETYPE}" \
			+game_mode "${SRCDS_GAMEMODE}" \
			+mapgroup "${SRCDS_MAPGROUP}" \
			+map "${SRCDS_STARTMAP}" \
			+sv_setsteamaccount "${SRCDS_TOKEN}" \
			+rcon_password "${SRCDS_RCONPW}" \
			#+sv_password "${SRCDS_PW}" \
			#-ip "${SRCDS_IP}" \
			"${ADDITIONAL_ARGS}"
