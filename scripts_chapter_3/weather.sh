#!/bin/bash


#для проверки ./weather.sh -x 47.2313 -y 39.7233

longitude=""

latitude=""

while getopts "x:y:" opt; do

  case $opt in

    x)

      longitude="$OPTARG"

      ;;

    y)

      latitude="$OPTARG"

      ;;

    \?)

      echo " $0 -x <долгота> -y <широта>"

      exit 1

      ;;

  esac

done
weather=$(curl -s "wttr.in/${longitude},${latitude}?format=%C+%t")
echo "Погода в точке (долгота: $longitude, широта: $latitude): $weather"
