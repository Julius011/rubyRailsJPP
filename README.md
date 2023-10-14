# README
Application: ESIMP

Emergency SIMple communication Program

Purpose: To set up a simple small network on the fly, using simplex communication links such as
email, FM transceivers or similar. Primary user interfaces on computers and mobile phones.

Reason: During an emergency, time and simplicity is of great importance. Organization and
communication must quickly be established, with any available means, for an effective handling of
the situation.

General: Operation of the program should be simple and self explanatory. Simplicity, easy setup and
adaption to circumstance are the main goals.
Features:

- Automatic Chain and star network configuration.
- Text based for easy reference to history in a stressful situation.
- Low band width simplex interconnections between nodes.
- Person to person filter for clarity in information exchange.
- Contact data base for quick setup and reconfiguration.
- Easy to reconfigure if part of the network fail or is lost.
- Low requirement for the program GUI and core.
Options:
- Voice messages.

Prof of concept: A demo version that shows the website and emulates the consept.


Network topology idea: 
A simple ring network configuration with possible subrings is selected. Its simplicity makes it easy to
implement and also with more difficult features like the ability to automatic rebuild of the network, if
parts of the network fails.
It consists of a number of nodes connected in a ring. The ring may have physical subrings but should
form a virtual large ring with all nodes.

A node is simply an interface to the network (GUI on a computer or mobile phone).
Messages consisting of the source node and message text. For example “Julius:Hello world”. “Julius” is the origin node and “Hello world” the message.
Each node will treat the message in different ways:
• If the origin of the message is itself, it will send it down the ring. When received again form
the ring it knows that the status of the network is “OK” and all nodes have received the
message. The message is then terminated.
• If the origin of the message is somebody else, it will simply pass it down the ring.
• If it is a special message for example just a node without a message it will add the node to
the list of nodes on line and pass it down the ring. Such messages should be produced by all
nodes automatically every certain time period. This to dynamically keep track of all available
nodes on the network. Also to determine and identify non-working parts of the network.
If a node is connected to a subring, it will act as a proxy for all nodes in that subring. Those nodes can
be considered as virtual nodes. All nodes virtual or real will form the large ring (see fig above).

Data links between nodes need only to handle simplex type of communication (each message is a
type package and the link can be time shared between transmit and receive). In other words it can be
simple FM transceivers controlled by a computer or messages services like mobile phone text
messages. There are no difficult real time demands on the data links.


The current program:
When opening the wbeserver you can type to a .txt file, yuo cna type in the .txt file and it will then after 15 seconds update on the webserver to see the message.
Alternative you can type in the terminal rake texting_task to make a rnd message coem up after 15 seconds.

Comments: 
The program need more time to have further progress, but I hade fun doing this little project.