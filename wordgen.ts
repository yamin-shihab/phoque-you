#!/usr/bin/env -S deno run -A

// The natural language processing library to be used
import nlp from "npm:compromise";

// Creates the given wordlist using a callback
async function format_file(
    name: string,
    callback: (word: string) => string[],
): Promise<void> {
    const filename = "words/" + name.toLowerCase() + "s.txt";
    console.log("Creating: " + filename);
    const text = await Deno.readTextFile("wordlist.txt");
    const words = nlp(text).canBe(name).out("array").flatMap(callback).join(
        "\n",
    );
    console.log(words);
    await Deno.writeTextFile(filename, words);
}

// Creates the wordlists
format_file("Adjective", (adjective) => {
    adjective = nlp(adjective).adjectives().all().text();
    return adjective.slice(-3) !== "est" ? [adjective] : [];
});
format_file("Verb", (verb) => {
    verb = nlp(verb).verbs().toGerund().all().text().split(" ").slice(-1)[0];
    return verb.slice(-3) === "ing" ? [verb] : [];
});
format_file("Adverb", (adverb) => [nlp(adverb).adverbs().all().text()]);
format_file("Noun", (noun) => [nlp(noun).nouns().toSingular().all().text()]);
