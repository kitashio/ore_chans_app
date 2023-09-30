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

//     --- taisei作業 ---

exports.generateTextToImage = functions
    .region("asia-northeast1")
    .https.onRequest(async (_, response) => {
        // todo　一旦apikeyベタ書きしてます。。
        const apiKey =
            "K1TLUIujBP0oKHv5TjoN7wumAuoOjEalwStLmTDeQcdAlu3E4v2oDQabpsX5";

        const body = {
            key: apiKey,
            prompt:
                req.body.prompt ||
                "ultra realistic close up portrait ((beautiful pale cyberpunk female with heavy black eyeliner))",
            negative_prompt: req.body.negative_prompt || null,
            width: req.body.width || "512",
            height: req.body.height || "512",
            samples: req.body.samples || "1",
            num_inference_steps: req.body.num_inference_steps || "20",
            seed: req.body.seed || null,
            guidance_scale: req.body.guidance_scale || 7.5,
            safety_checker: req.body.safety_checker || "yes",
            multi_lingual: req.body.multi_lingual || "no",
            panorama: req.body.panorama || "no",
            self_attention: req.body.self_attention || "no",
            upscale: req.body.upscale || "no",
            embeddings_model: req.body.embeddings_model || null,
            webhook: req.body.webhook || null,
            track_id: req.body.track_id || null,
        };

        try {
            const response = await fetch(
                "https://stablediffusionapi.com/api/v3/text2img",
                {
                    method: "POST",
                    headers: {
                        "Content-Type": "application/json",
                    },
                    body: JSON.stringify(body),
                }
            );

            const result = await response.json();
            res.status(200).send(result);
        } catch (error) {
            console.error("Error:", error);
            res.status(500).send({
                error: "Failed to generate image from text.",
            });
        }
    });
