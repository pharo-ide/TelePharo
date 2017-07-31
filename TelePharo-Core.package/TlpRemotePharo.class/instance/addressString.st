accessing
addressString
	^String streamContents: [ :s | remotePeer address printSimpleStringOn: s ]