#!/bin/bash

URI="$1"
TITLE="$2"
MAKER="$3"

# <#0.01928626921678589>
#    a bookm:Bookmark;
#    terms:created "2018-10-17T17:30:02.020Z"^^XML:dateTime;
#    terms:title "Apple Launches Portal for U.S. Users to Download Their Data";
#    bookm:recalls n0:apple-launches-portal-for-u-s-users-to-download-their-data;
#    n1:maker n2:me.

# <>
#    terms:references
#        <#0.01928626921678589
#

ID="#0.01928626921678589"
CREATED="2018-10-17T17:30:02.020Z"
TITLE="Apple Launches Portal for U.S. Users to Download Their Data"
RECALLS="https://www.bloomberg.com/news/articles/2018-10-17/apple-launches-portal-for-u-s-users-to-download-their-data"
MAKER="https://melvincarvalho.com/#me"
URI=$1

read -r -d '' BODY <<"EOF"
INSERT DATA {
  <> <http://purl.org/dc/terms/references> <$ID> .
  <$ID> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2002/01/bookmark#Bookmark> .
  <$ID> <http://purl.org/dc/terms/created> "$CREATED"^^XML:dateTime .
  <$ID> <http://purl.org/dc/terms/title> """$TITLE""" .
  <$ID> <http://www.w3.org/2002/01/bookmark/recalls> """$RECALLS""" .
  <$ID> <http://xmlns.com/foaf/0.1/maker> """$MAKER""" .
}
EOF

echo curl -X PATCH -H "Content-Type:application/sparql-update" "$URI" -d  "$BODY"
