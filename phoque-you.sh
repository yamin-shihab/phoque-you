#!/usr/bin/env sh

# Find suitable words directory
paths="$1 $HOME/.local/share/phoque-you /usr/local/share/phoque-you /usr/share/phoque-you"
for path in $paths; do
    if test -d "$path"; then
        break
    elif test "$path" = "$1"; then
        printf "Provided phoque-you words directory (%s) doesn't exist.\n" "$1" >&2
        exit
    else
        path=""
    fi
done
if test "$path" = ""; then
    printf "No suitable phoque-you words directory found.\n" >&2
    exit
fi

# Function to give random words
rand() {
    for list in "$@"; do
        shuf --head-count=1 "$path/${list}s.txt"
    done
}

# The final format string
insult="$(printf '%s-%s %s-%s %s-%s %s %s %s' $(rand noun verb adverb adjective adverb verb verb adjective noun))"
printf "You %s!\n" "$insult"
