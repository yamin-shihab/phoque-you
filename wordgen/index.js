const nlp = require("compromise");
const fs = require("fs");

fs.readFile("../words/verbs.txt", "utf8", (err, text) => {
    if (err) {
        console.error(err);
        return;
    }

    const words = text.split("\n");
    for (const word of words) {
        const gerund = nlp(word).verbs().toGerund().all().text();
        if (gerund.slice(-3) === "ing") {
            console.log(gerund.split(" ").slice(-1)[0]);
        }
    }
});
