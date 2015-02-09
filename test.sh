#!/bin/bash
COREDIR=../mupen64plus-core
CORELIB=$COREDIR/projects/unix/libmupen64plus.so.2
OPTIONS="--resolution 640x480 --windowed --osd --rsp mupen64plus-rsp-hle \
	--audio mupen64plus-audio-sdl"
TESTSCRIPT=$COREDIR/data/test.lua
ROM="/home/rena/games/n64/Mario Kart 64 (USA).n64"

./projects/unix/mupen64plus \
	--corelib $CORELIB $OPTIONS --lua "$TESTSCRIPT" "$ROM"
