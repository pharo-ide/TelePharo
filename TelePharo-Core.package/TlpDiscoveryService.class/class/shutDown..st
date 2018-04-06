system startup
shutDown: quiting
	"Our system shutDown hook: stop all servers we manage"
	
	quiting ifTrue: [
		"Somehow shutdown running ssdp server leads to hanging of image shutdown process"
		"self stopAll" ]