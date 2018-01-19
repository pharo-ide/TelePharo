*TelePharo-Browser-Server
prepareValueTransferBy: aSeamlessObjectTransporter
	super prepareValueTransferBy: aSeamlessObjectTransporter.
	
	aSeamlessObjectTransporter transfer: childrenType byWellKnownObjectNamed: childrenType name 