*TelePharo-Browser-Server
seamlessDefaultTransferStrategy
	^environment isSeamlessProxy 
		ifTrue: [ SeamlessTransferStrategy defaultByValue]
		ifFalse: [ SeamlessTransferStrategy defaultByReference ]