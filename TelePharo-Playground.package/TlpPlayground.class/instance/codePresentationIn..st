building
codePresentationIn: composite

	| doItReceiver |
	doItReceiver := TlpRemoteDoItReceiver for: remotePharo.
	
	^(composite custom: (SeamlessRemoteScriptPresentation remotePeer: remotePharo))
		doItReceiver: [ :object | doItReceiver ];
		smalltalkClass: [ :object | doItReceiver ]