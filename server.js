var http = require("http");
var server = http.createServer(function(request,response){
  var path = request.url;
  var split = path("/");
  if (split[1] === "say"){
        response.end(split[2]);
  }
});
server.listen(2000);
