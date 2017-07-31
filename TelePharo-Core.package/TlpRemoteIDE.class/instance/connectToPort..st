connecting
connectToPort: portNumber

	^self 	connectTo: (TCPAddress localAt: portNumber)