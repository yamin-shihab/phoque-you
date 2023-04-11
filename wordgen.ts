import nlp from "npm:compromise";

const text = await Deno.readTextFile("words/verbs.txt");
const words = text.split("\n");
for (const word of words) {
    const gerund = nlp(word).verbs().toGerund().all().text();
    if (gerund.slice(-3) === "ing") {
        console.log(gerund.split(" ").slice(-1)[0]);
    }
}
