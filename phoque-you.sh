#!/usr/bin/env sh

# Files containing words separated by newline
ADJECTIVES="words/adjectives.txt"
ADVERBS="words/adverbs.txt"
NOUNS="words/nouns.txt"
VERBS="words/verbs.txt"

# Aliases to generate appropriate word
alias adjective="shuf --head-count=1 $ADJECTIVES"
alias adverb="shuf --head-count=1 $ADVERBS"
alias noun="sed '/s$/d' $NOUNS | sed '/ing$/d' | shuf --head-count=1"
alias verb="grep 'ing$' $NOUNS | shuf --head-count=1"

# The final format string
insult="You $(noun)-$(verb) $(adverb)-$(adjective) $(adverb)-$(verb) $(adjective) $(noun)"
printf "$insult\n"
printf "$insult" | xclip -sel clip
