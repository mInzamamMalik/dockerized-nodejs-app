'use strict';

const express = require('express');

// Constants
const PORT = process.env.PORT;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
    console.log('Hello world changed\n');
    res.send('Hello world changed\n');
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`,process.env);