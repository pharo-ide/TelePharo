*TelePharo-Browser-Server
seamlessDefaultTransferStrategy
	^environment 
		ifNil: [ SeamlessTransferStrategy defaultByValue]
		ifNotNil: [ SeamlessTransferStrategy defaultByReference ]