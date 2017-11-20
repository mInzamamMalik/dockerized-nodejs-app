'use strict';

const express = require('express');

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
    console.log('Hello world changed once again\n');
    res.send('Hello world changed once again\n');
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);