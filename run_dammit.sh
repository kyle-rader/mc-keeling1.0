#!/bin/sh

RUNDIR="/home/longb4/server/minecraft-kyle"
RUN_THIS="start"
SHAKE_MY_HEAD="crashlog.txt"

while true
do
    $RUNDIR/$RUN_THIS || echo "Exited $?"
    echo "[`date '+%Y-%m-%d %H:%M:%S'`] Server in $RUN_THIS script died; restarting" >> $RUNDIR/$SHAKE_MY_HEAD
done
