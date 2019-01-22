#!/bin/bash

# Send bookmark to an inbox

set -o xtrace

URI="$1"
RECALLS="$2"
MAKER="$3"
TITLE="$4"
ID="$5"
CREATED="$6"

echo "URI : $URI" 1>&2
echo "RECALLS : $RECALLS" 1>&2
echo "MAKER : $MAKER" 1>&2
echo "TITLE : $TITLE" 1>&2
echo "ID : $ID" 1>&2
echo "CREATED : $CREATED" 1>&2

usage() {
  echo "Usage: $0 <URI> <RECALLS> <MAKER> <TITLE> <ID> <CREATED>"
}

if [ -z $CREATED ]
then
  usage
  exit -1
fi

# send a payment
# bin/addbookmark.sh https://melvin.solid.community/inbox/100sats.ttl "https://donnerlab.com/voucher/a143017f-2d38-fdsdfdsf" "https://melvincarvalho.com/#me" "100 satoshis voucher" "#id" "2019-01-21T14:30:02.020Z"

# send ipfs
# DATE=$(date -u +"%Y-%m-%dT%H:%M:%SZ") ;  bin/addbookmark.sh  https://bookmarks.inrupt.net/inbox/b.ttl "ipfs:foo" "https://melvincarvalho.com/#me" "IPFS link" "0.${RANDOM}" $DATE

read -r -d '' BODY <<EOF
  <> <http://purl.org/dc/terms/references> <$ID> .
  <$ID> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2002/01/bookmark#Bookmark> .
  <$ID> <http://purl.org/dc/terms/created> "$CREATED"^^<http://www.w3.org/2001/XMLSchema#dateTime> .
  <$ID> <http://purl.org/dc/terms/title> """$TITLE""" .
  <$ID> <http://www.w3.org/2002/01/bookmark#recalls> <$RECALLS> .
  <$ID> <http://xmlns.com/foaf/0.1/maker> """$MAKER""" .
EOF

# @TODO : get authn params
echo curl -k -X POST -H "Content-Type: text/turtle" "$URI" --data  "$BODY" 2>&1
curl -k -X POST -H "Content-Type: text/turtle" "$URI" --data  "$BODY"
