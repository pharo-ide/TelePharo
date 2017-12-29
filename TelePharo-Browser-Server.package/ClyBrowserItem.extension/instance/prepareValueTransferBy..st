*TelePharo-Browser-Server
prepareValueTransferBy: aSeamlessObjectTransporter

	| objectClass |
	aSeamlessObjectTransporter transfer: type byWellKnownObjectNamed: type name.
	aSeamlessObjectTransporter transferByValue: properties.
	"temporal solution to optimize process/context items while we still using GTDebugger in remote scenario"
	actualObject isSeamlessProxy ifTrue: [ ^self].
	objectClass := actualObject class.
	objectClass == CompiledMethod | (objectClass == Context) ifTrue: [ 
		aSeamlessObjectTransporter transferByReference: actualObject ]