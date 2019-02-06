#!/bin/bash
name = "Project"
cd /var/$name


if [ $1 == "start" ]
then
    screen -dmS "$name" #Command#
fi


if [ $1 == "stop" ]
then
    #screen -S "$name"  -X stuff 'exit\r'# #SEND COMMAND ON PROGRAM#
    #screen -S "$name"  -X kill # #KILL#
fi

if [ $1 == "update" ]
then
    #screen -S "$name"  -X stuff 'exit\r'# #SEND COMMAND ON PROGRAM#
    #screen -S "$name"  -X kill # #KILL#
    eval $(ssh-agent -s)
    ssh-add ~/.ssh/$name
    git pull origin
    screen -dmS "$name" #Command#
fi