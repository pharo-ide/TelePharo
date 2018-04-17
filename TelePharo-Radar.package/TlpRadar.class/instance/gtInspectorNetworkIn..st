gt inspector
gtInspectorNetworkIn: composite
	<gtInspectorPresentationOrder: 0> 
	^(composite fastTable)
		title: 'Network';
		display: [ detectedPharos ];
		wantsAutomaticRefresh: true;
		column: 'Remote Pharo Address' evaluated: [ :pharo | pharo displayString ];
		column: 'Status' evaluated: [ :pharo | self gtConnectingButtonFor: pharo ] width: 20