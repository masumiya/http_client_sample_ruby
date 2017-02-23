require 'socket'

socket = TCPSocket.open('example.com', 80)
socket.print("GET /index.html HTTP/1.0\r\n\r\n")
http_header, http_body = socket.read.split("\r\n\r\n", 2) 

puts "---- HEADER START ----\n#{http_header}\n---- HEADER END ----"
puts "---- BODY START ----\n#{http_body}\n---- BODY END ----"
