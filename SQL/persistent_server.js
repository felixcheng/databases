var mysql = require('mysql');
var handleRequest = require('../2014-01-chatterbox-server/server/request-handler.js');
var http = require("http");
/* If the node mysql module is not found on your system, you may
 * need to do an "sudo npm install -g mysql". */

/* You'll need to fill the following out with your mysql username and password.
 * database: "chat" specifies that we're using the database called
 * "chat", which we created by running schema.sql.*/
var dbConnection = mysql.createConnection({
  user: "root",
  password: "",
  database: "chatrooom"
}); 

var temp = "SELECT Messages.text Users.id FROM Messages FULL OUTER JOIN Users ON Messages.Id_Users=Users.Id FULL OUTER JOIN Rooms ON Messages.id_Rooms=Rooms.Id"

var getQuery = "SELECT messages.text users.id FROM messages full OUTER JOIN users ON messages.id_users=users.id";

dbConnection.connect();

var trial= function (){dbConnection.query("", function (err, result){
  if(err){
    console.log(err);
  }
  console.log(result);
});}

trial();
/* Now you can make queries to the Mysql database using the
 * dbConnection.query() method.
 * See (https://github.com/felixge/node-mysql) for more details about
 * using this module.*/

/* You already know how to create an http server from the previous
 * assignment; you can re-use most of that code here. */


/* Every server needs to listen on a port with a unique number. The
 * standard port for HTTP servers is port 80, but that port is
 * normally already claimed by another server and/or not accessible
 * so we'll use a higher port number that is not likely to be taken: */
var port = 8080;

/* For now, since you're running this server on your local machine,
 * we'll have it listen on the IP address 127.0.0.1, which is a
 * special address that always refers to localhost. */
var ip = "127.0.0.1";

/* We use node's http module to create a server. Note, we called it 'server', but
  we could have called it anything (myServer, blahblah, etc.). The function we pass it (handleRequest)
will, unsurprisingly, handle all incoming requests. (ps: 'handleRequest' is in the 'request-handler' file).
Lastly, we tell the server we made to listen on the given port and IP. */
var server = http.createServer(handleRequest);
console.log("Listening on http://" + ip + ":" + port);
server.listen(port, ip);

var getQuery = "SHOW TABLES";