const functions = require("firebase-functions");
const https = require("https");

// APIサンプル
exports.fetchData = functions
    .region("asia-northeast1")
    .https.onRequest((_, response) => {
        const options = {
            hostname: "jsonplaceholder.typicode.com",
            path: "/posts/1",
            method: "GET",
        };

        const req = https.request(options, (res) => {
            let data = "";

            res.on("data", (chunk) => {
                data += chunk;
            });

            res.on("end", () => {
                try {
                    const parsedData = JSON.parse(data);
                    response.send(parsedData);
                } catch (e) {
                    console.error("Error parsing JSON:", e);
                    response.status(500).send("Server Error");
                }
            });
        });

        req.on("error", (e) => {
            console.error(`Problem with request: ${e.message}`);
            response.status(500).send("Server Error");
        });

        req.end();
    });
