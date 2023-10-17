#!/bin/sh

CONTAINER=$(docker ps -a | grep los-gatos | awk {'print $1 " " '} | tr -d '\n')

echo "LIST ID CONTAINER: $CONTAINER"

if [ ! -z "$CONTAINER" ]
then
    echo "_____________________________________________________________"
    echo "_____________________________________________________________"
    echo "_____________________________________________________________"
    echo "STOP CONTAINER los-gatos"
    COMMAND="docker stop $CONTAINER"
    echo "COMMAND: $COMMAND"
    $COMMAND
    echo "_____________________________________________________________"
    echo "DELETE CONTAINER los-gatos"
    COMMAND="docker rm $CONTAINER"
    echo "COMMAND: $COMMAND"
    $COMMAND
    echo "_____________________________________________________________"
else
    echo "NOT EXIST CONTAINER los-gatos"
fi

IMAGES=$(docker images | grep los-gatos | awk {'print $3'})

if [ ! -z "$IMAGES" ]
then
    echo "_____________________________________________________________"
    echo "DELETE IMAGES los-gatos"
    COMMAND="docker rmi -f $IMAGES"
    echo "COMMAND: $COMMAND"
    $COMMAND
    echo "_____________________________________________________________"
    echo "_____________________________________________________________"
    echo "_____________________________________________________________"
else
    echo "NOT EXIST IMAGES los-gatos"
fi

docker compose up