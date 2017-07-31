network configuration
configureRemotePharoNetwork: aSeamlessNetwork

	aSeamlessNetwork
		transferByReference: (Kind of: CompiledMethod) withCacheFor: #(selector methodClass isTestMethod argumentNames);
		transferByReference: (Kind of: Context) withCacheFor: #(receiver method methodClass methodSelector isBlockContext home tempNames  isDead selector sender debuggerMap outerContext outerMostContext closure); "sourceCode"
		transferByValue: (Kind of: Slot);
		transferByReference: (Kind of: Class) withCacheFor: #(name allInstVarNames allSlots);
		transferByReference: (Kind of: Metaclass) withCacheFor: #(name allInstVarNames allSlots);
		transferByValue: (Kind of: OrderedCollection);
		transferByValue: (Kind of: Set);
		transferByValue: (Kind of: Interval);
		transferByValue: (Kind of: Array);
		transferByValue: (Kind of: DebugSession)