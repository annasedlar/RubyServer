require 'socket'
server = TCPServer.new 3000
loop do
  socket = server.accept
  socket.write "HTTP/1.0 200 OK\r\n"
  socket.write "Content-Length: 2\r\n"
  socket.write "\r\n"
  socket.write "hi\n"
  socket.close
end

