# script to have conky display cmus stuff
# taken and adaptated from:
# https://v3gard.com/2011/01/getting-cmus-to-cooperate-with-conky/
# in conky use: ${execi 2 ~/.config/conky/cmus_conky.sh}
# with this script in ~/.config/conky/ of course...

#!/bin/bash

if [ ! -x /usr/bin/cmus-remote ];
then
    echo "cmus is not installed."
    exit
fi

ARTIST=$( cmus-remote -Q 2>/dev/null | grep " artist " | cut -d " " -f 3- )
TITLE=$( cmus-remote -Q 2>/dev/null | grep " title " | cut -d " " -f 3- )
ALBUM=$( cmus-remote -Q 2>/dev/null | grep " album " | cut -d " " -f 3- )
WHERE=$( cmus-remote -Q 2>/dev/null | grep position | cut -d " " -f 2- )
TOTAL=$( cmus-remote -Q 2>/dev/null | grep duration | cut -d " " -f 2- )

WHERE_MIN=$(( $WHERE / 60 ))
WHERE_SEC=$(( $WHERE % 60 ))
TOTAL_MIN=$(( $TOTAL / 60 ))
TOTAL_SEC=$(( $TOTAL % 60 ))

WHERE_SEC=$(printf "%02d" $WHERE_SEC)
TOTAL_SEC=$(printf "%02d" $TOTAL_SEC)

if [ -z "$ARTIST" ];
then
    echo "Nothing..."
else
    echo "artist: $ARTIST\nalbum: $ALBUM\ntitle: $TITLE ($WHERE_MIN:$WHERE_SEC/$TOTAL_MIN:$TOTAL_SEC)"
fi
