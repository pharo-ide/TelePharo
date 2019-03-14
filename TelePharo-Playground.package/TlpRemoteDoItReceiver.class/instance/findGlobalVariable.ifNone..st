lookup
findGlobalVariable: lookupBlock ifNone: notFoundBlock
	"Normally it should scan remote globals for given block but it is too slow because of thousands network requests between block variables"
	
	^notFoundBlock value