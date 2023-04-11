# phoque-you

A shell script to generate a (usually buggy) random insult, you decimal-including interrogatively-affectionate superstitiously-surging paternal bacteremia.

## Usage

Just run `phoque-you.sh` (make sure you're in the same directory as the `words/` directory). It literally just puts random words together, so it may accidentally be good at what it does.

The `wordgen.ts` file is a script to be run using [Deno](deno.land) (`deno run wordgen.ts`, as it downloads and asks for permission). It takes in a list of verbs and outputs a present participle version of all the verbs. `sort $file | uniq > $file` is then usually done afterwards.

This is all usually done with an original copy of the [WordNet word database](https://wordnet.princeton.edu/download/current-version), but this has already been done (`words/`).

## WordNet

The word lists located in the `words/` directory are a heavily modified version of [WordNet's word database](https://wordnet.princeton.edu/download/current-version). It seems like I also have to write this here:

WordNet Release 3.0 This software and database is being provided to you, the LICENSEE, by Princeton University under the following license. By obtaining, using and/or copying this software and database, you agree that you have read, understood, and will comply with these terms and conditions.: Permission to use, copy, modify and distribute this software and database and its documentation for any purpose and without fee or royalty is hereby granted, provided that you agree to comply with the following copyright notice and statements, including the disclaimer, and that the same appear on ALL copies of the software, database and documentation, including modifications that you make for internal use or for distribution. WordNet 3.0 Copyright 2006 by Princeton University. All rights reserved. THIS SOFTWARE AND DATABASE IS PROVIDED "AS IS" AND PRINCETON UNIVERSITY MAKES NO REPRESENTATIONS OR WARRANTIES, EXPRESS OR IMPLIED. BY WAY OF EXAMPLE, BUT NOT LIMITATION, PRINCETON UNIVERSITY MAKES NO REPRESENTATIONS OR WARRANTIES OF MERCHANT- ABILITY OR FITNESS FOR ANY PARTICULAR PURPOSE OR THAT THE USE OF THE LICENSED SOFTWARE, DATABASE OR DOCUMENTATION WILL NOT INFRINGE ANY THIRD PARTY PATENTS, COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS. The name of Princeton University or Princeton may not be used in advertising or publicity pertaining to distribution of the software and/or database. Title to copyright in this software, database and any associated documentation shall at all times remain with Princeton University and LICENSEE agrees to preserve same.

Bro. Princeton University. Relax. It's literally just a random insult generator shell script.
