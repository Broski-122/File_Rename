#! /bin/bash
# Requires 'inotify-tools'
rename() {
    X='external-content.duckduckgo.com.jpg'
    Y='DuckDuckGoContent'
    cd "/home/$USER/Downloads"
        while [[ -f "$PWD/$X" ]]
        do
            inotifywait "$PWD/$X"
            mv -v "$PWD/$X" "$PWD/$Y$(($RANDOM%99999999)).jpg"
        done
 }
while true
do
    sleep 5
    rename
done
