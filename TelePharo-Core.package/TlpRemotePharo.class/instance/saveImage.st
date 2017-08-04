requests
saveImage

	remotePeer evaluateAsync: [ 
		[Smalltalk saveSession] forkAt: Processor activePriority + 1 ]