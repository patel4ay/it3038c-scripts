var http = require("http");

var server = hhtp.createServer(function(req, res){
    res.writehead(200,{"Content-Type":"text/html"});
    res.end("Hello from Node!");
});

server.listen(3000);
console.log("Server listening on port 3000")