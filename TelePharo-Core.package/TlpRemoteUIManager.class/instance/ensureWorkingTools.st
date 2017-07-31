controlling
ensureWorkingTools

	self isRemoteIDEConnected ifTrue: [ ^self ].
	self restoreLocalTools 