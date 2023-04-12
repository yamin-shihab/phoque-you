#!/usr/bin/env -S deno run

// The natural language processing library to be used
import nlp from "npm:compromise";

// Open up the verbs file and print a gerund version of it
const text = await Deno.readTextFile("words-orig/verbs.txt");
const words = text.split("\n");
for (const word of words) {
    const gerund = nlp(word).verbs().toGerund().all().text();
    if (gerund.slice(-3) === "ing") {
        console.log(gerund.split(" ").slice(-1)[0]);
    }
}
