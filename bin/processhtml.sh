#!/bin/bash

#export DEFAULT_FILE="./index.html"
#export FILE=${1:-$DEFAULT_FILE}

export TMPFILE="/tmp/$$"

shopt -s globstar

if [[ $1 == "" ]]
then 
  FILE_LIST="**/*.html"
else
  FILE_LIST="$1"
fi

for FILE in $FILE_LIST
do

    2>&1 grep 'processhtml.sh--' "$FILE" > /dev/null
    if [[ $? -eq 0 ]]
    then
      echo "continue"
      continue
    fi

    if [[ ! -s "$FILE" ]]
    then
      echo "continue"
      continue
    fi

    echo "Processing $FILE"

    TMPVAR=$(sed -f "$(dirname "$0")/processhtml.sed" "$FILE")

    for ID in $(echo "$TMPVAR" | grep 'href=..FMID' | sed 's/.*"#\(FMID[^"]*\)".*/\1/')
    do
    
      HREF=$(echo "$TMPVAR" | grep "\"$ID" | sed "s/.*\($ID\)\"..[^/]*href=.\([^\"]*\)\".*/\2/") 
       echo $HREF | grep '<div class="nodecontent" style="color:#000000;font-size'  >/dev/null 2>&1

      if [[ $? -eq 1 ]]
      then
        echo file: $FILE
        echo $ID
        echo $HREF
        TMPVAR=$(echo "$TMPVAR" | sed "s,#$ID,$HREF,")
      fi
      
    done
    echo "$TMPVAR" > "$FILE"

done

# <a id="FMID_101804111FM" /><div class="nodecontent" style="color:#000000;font-size:83%;"><a href="https://angular.io/">

# <area shape="rect" href="#FMID_101804111FM" alt="angular" title="angular" coords="547,136,622,154" />