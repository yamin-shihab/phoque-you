# phoque-you

A shell script to generate a (usually buggy) random insult, you decimal-including interrogatively-affectionate superstitiously-surging paternal bacteremia.

## Usage

Just run `phoque-you.sh` (make sure you're in the directory that contains the `words/` directory). It literally just puts random words together, so it may accidentally be good at what it does. To install it, move `phoque-you.sh` to somewhere in `$PATH`, like `/usr/local/bin/`. You also have to move the `words/` directory somewhere else too, and edit the moved `phoque-you` file to use the moved directory.

The `wordgen.ts` file is a typescript script to be run using [Deno](deno.land). By using the excellent [Compromise NLP library](https://github.com/spencermountain/compromise), it goes through `wordlist.txt` and separates all the words into `words/adjectives.txt`, `words/adverbs.txt`, `words/nouns.txt`, and `words/verbs.txt`. `wordlist.txt` is a slightly modified version of `2of5core.txt` from [12Dicts](http://wordlist.aspell.net/12dicts).
