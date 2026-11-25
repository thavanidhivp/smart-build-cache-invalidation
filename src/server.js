const express = require("express");

const app = express();

const PORT = 3000;

app.get("/", (req, res) => {
    res.send(`
        <h1>Smart Build-Cache Invalidation</h1>
        <h2>Smart Cache Updated Successfully!</h2>
        <p>Docker build caching is working.</p>
    `);
});

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});