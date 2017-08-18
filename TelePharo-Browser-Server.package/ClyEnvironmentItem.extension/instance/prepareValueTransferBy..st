*TelePharo-Browser-Server
prepareValueTransferBy: aSeamlessObjectTransporter

	| objectClass |
	aSeamlessObjectTransporter transferByValue: properties.
	"temporal solution to optimaze process/context items while we still using GTDebugger in remote scenario"
	actualObject isSeamlessProxy ifTrue: [ ^self].
	objectClass := actualObject class.
	objectClass == CompiledMethod | (objectClass == Context) ifTrue: [ 
		aSeamlessObjectTransporter transferByReference: actualObject ]