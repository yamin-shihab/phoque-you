#!/usr/bin/env sh

# Function to give random words
rand() {
    for list in "$@"; do
        shuf --head-count=1 "words/${list}s.txt"
    done
}

# The final format string
insult="$(printf '%s-%s %s-%s %s-%s %s %s %s' $(rand noun verb adverb adjective adverb verb verb adjective noun))"
printf "You %s!\n" "$insult"
if type "wl-copy" > /dev/null; then
    echo "$insult" | wl-copy 
elif type "xsel" > /dev/null; then
    echo "$insult" | xsel -ib
elif type "xclip" > /dev/null; then
    echo "$insult" | xclip -sel c
fi
