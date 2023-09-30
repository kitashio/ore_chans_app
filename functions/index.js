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

exports.generateImageFromText = functions
    .region("asia-northeast1")
    .https.onRequest(async (_, res) => {
        const apiKey = process.env.STABLE_DIFFUSION_API_KEY;
        const baseUrl = "https://stablediffusionapi.com/api/";

        const body = {
            key: apiKey,
            model_id: "meinapastel",
            prompt: generateRandomPrompt(),
            negative_prompt:
                "painting, extra fingers, mutated hands, poorly drawn hands, poorly drawn face, deformed, ugly, blurry, bad anatomy, bad proportions, extra limbs, cloned face, skinny, glitchy, double torso, extra arms, extra hands, mangled fingers, missing lips, ugly face, distorted face, extra legs, anime",
            width: "512",
            height: "512",
            samples: "1",
            num_inference_steps: "30",
            seed: null,
            guidance_scale: 7.5,
            webhook: null,
            track_id: null,
        };

        try {
            const response = await fetch(baseUrl + "v4/dreambooth", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify(body),
            });

            const result = await response.json();
            res.status(200).send(result);
        } catch (error) {
            console.error("Error:", error);
            res.status(500).send({
                error: "Failed to generate image from text.",
            });
        }
    });

// 基本プロンプト
const basePrompt =
    "from above, final fantasy illustration, {{white background,white flat color,japonica}},final fantasy illustration,iridescent powder light,aqua lily,red japonica camellia,gradient flower,1girl,loli,branch,gochiusa,red illustration,monochrome, {{acrylic paint (medium)}}, clump,floating hair";

// 髪色に関するプロンプトのリスト
const hairColorPrompts = [
    "black hair",
    "blonde hair",
    "brown hair",
    "blue hair",
    "green hair",
    "pink hair",
    "purple hair",
    "red hair",
    "silver hair",
];

// 髪の長さに関するプロンプトのリスト
const hairLengthPrompts = [
    "short hair",
    "medium hair",
    "long hair",
    "very long hair",
    "bob cut",
    "ponytail",
    "bun hair",
];

// ランダムなプロンプトを生成する関数
function generateRandomPrompt() {
    const randomHairColor =
        hairColorPrompts[Math.floor(Math.random() * hairColorPrompts.length)];
    const randomHairLength =
        hairLengthPrompts[Math.floor(Math.random() * hairLengthPrompts.length)];

    return basePrompt + ", " + randomHairColor + ", " + randomHairLength;
}
