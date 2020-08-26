connecting
disconnectAll

	connectedSystems do: [ :each | each disconnect].
	connectedSystems removeAll.
		
	connectingNetwork close