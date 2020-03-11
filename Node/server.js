var http = require("http"); 
var fs = require("fs");
var os = require("os");
var ip = require("ip");

function getuptime() {   
            var uptime = os.uptime; 
                var days = Math.floor(uptime / 86400);
                uptime -= days * 86400;
                var hours = Math.floor(uptime / 3600) % 24;
                uptime -= hours * 3600;
                var minutes = Math.floor(uptime / 60) % 60;
                uptime -= minutes *60;
                var seconds = uptime % 60;
                return days + ":" +hours + ":" +minutes;

}
var server = http.createServer(function(req, res){
    if(req.url === "/") {
        fs.readFile("./public/index.html","UTF-8",function(err, body){
            res.writeHead(200, {"Content-Type":"text/html"}); 
            res.end(body);
        });
    }

    else if(req.url.match("/sysinfo")){
        myHostName=os.hostname();
        html=`
        <!DOCTYPE html>
        <html>
         <head> 
         <title> System Info </title>
         </head>
         <body>
         <p>Hostname: ${myHostName}</p>
         <p>IP: ${ip.address()}</p>
         <p>Server Uptime: ${getuptime()} </p>
         <p>Total Memory: ${os.totalmem/1000000} MB </p>
         <p>Free Memory: ${os.freemem/1000000} MB </p>
         <p>Number of CPUs: ${os.cpus().length} </p>
         </body>
         </html>
        `
        res.writeHead(200, {"Content-Type":"text/html"});
        res.end(html);
    }

    else {
        res.writeHead(404, {"Content-Type":"text/plain"});
        res.end(`404 File Not Found at ${req.url}`); 
    }
});

server.listen(3000); 
console.log("Server listening on port 3000"); 