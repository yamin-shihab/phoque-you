#!/usr/bin/env sh

# Function to give random words
rand() {
    for list in "$@"; do
        shuf --head-count=1 "words/${list}s.txt"
    done
}

# The final format string
insult="$(printf 'You %s-%s %s-%s %s-%s %s %s' $(rand noun verb adverb adjective adverb verb adjective noun))"
printf "$insult\n"
if type "xclip" > /dev/null; then
    printf "$insult" | xclip -sel c
elif type "xsel" > /dev/null; then
    printf "$insult" | xsel -ib
fi
