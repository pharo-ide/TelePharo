connecting
disconnectAll

	connectedPharos do: [ :each | each disconnect].
	connectedPharos removeAll.
		
	connectingNetwork destroy