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

# TODO create heredoc with correct terms

curl -X PATCH -H "Content-Type:application/sparql-update" "$URI" -d  "INSERT DATA { <> <> <$URI> . } "
