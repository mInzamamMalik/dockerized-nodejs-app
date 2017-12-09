'use strict';

const express = require('express');

// Constants
const PORT = process.env.PORT;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
    console.log('Hello world once');
    res.send('Hello world once abc');
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);