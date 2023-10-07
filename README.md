# phoque-you

*A shell script and wordlist-generator to generate a (usually buggy) random insult, you history-reforming slowly-private previously-routing disappointing poor organization!*

---

Just run `phoque-you.sh` along with a provided argument pointing to the directory containing the wordlists. It literally just puts random words together, so it may accidentally be a little too good (or bad) at what it does. To install it, move `phoque-you.sh` to somewhere in `$PATH`, like `/usr/local/bin/`. For convenience, you can also move the `words/` directory into one of the paths specified in `phoque-you.sh` (be sure to then rename it to `phoque-you/`).

The `wordgen.ts` file is a typescript script to be run using [Deno](deno.land). By using the excellent [Compromise NLP library](https://github.com/spencermountain/compromise), it goes through `wordlist.txt` and separates all the words into `words/adjectives.txt`, `words/adverbs.txt`, `words/nouns.txt`, and `words/verbs.txt`. `wordlist.txt` is a slightly modified version of `2of5core.txt` from [12Dicts](http://wordlist.aspell.net/12dicts).
