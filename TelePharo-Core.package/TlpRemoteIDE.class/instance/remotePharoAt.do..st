accessing
remotePharoAt: aTCPAddress do: aBlock
	
	connectedPharos at: aTCPAddress ifPresent: aBlock