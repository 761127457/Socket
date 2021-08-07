CXX = g++ -Wall -g

clienttarget = client
servertarget = server
.PYTHON:all
all:$(clienttarget) $(servertarget)

$(clienttarget):client.o
	$(CXX) -o $(clienttarget) client.o
$(servertarget):server.o
	$(CXX) -o $(servertarget) server.o
