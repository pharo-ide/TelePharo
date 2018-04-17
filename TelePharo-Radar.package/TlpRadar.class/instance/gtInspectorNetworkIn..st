gt inspector
gtInspectorNetworkIn: composite
	<gtInspectorPresentationOrder: 0> 
	^ (composite fastList)
		title: 'Network';
		display: [ detectedPharos ];
		beSingle;	
		format: [ :each | each displayString ]