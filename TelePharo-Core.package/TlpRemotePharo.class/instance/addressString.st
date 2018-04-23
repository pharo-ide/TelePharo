accessing
addressString
	^String streamContents: [ :s | self address printSimpleStringOn: s ]