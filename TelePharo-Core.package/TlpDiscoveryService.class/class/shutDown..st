system startup
shutDown: quiting
	"Our system shutDown hook: stop all servers we manage"
	
	quiting ifTrue: [
		self runningServices do: [ :each | each stop ] ]