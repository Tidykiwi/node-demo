// A very simple server

const http = require('http');

// Create server object
http.createServer((req, res) => {
    // Write a response
    res.write('Hello World');
    res.end()
}).listen(5000, () => console.log('Server running...'));

// Open localhost:5000 to see 'Hello World'
// 'Ctrl c' to close server