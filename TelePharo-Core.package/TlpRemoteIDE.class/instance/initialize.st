initialization
initialize
	super initialize.
	
	connectedPharos := Dictionary new.
	tools := Dictionary new.
	self setUpAvailableTools.
	connectingNetwork := SeamlessNetwork new.
	connectingNetwork transferByValue: (Kind of: BlockClosure).
	connectingNetwork transferByValue: (Kind of: Array).