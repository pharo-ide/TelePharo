gt inspector
gtInspectorNetworkIn: composite
	<gtInspectorPresentationOrder: 0> 
	^(composite fastTable)
		title: 'Network';
		display: [ detectedPharos ];
		wantsAutomaticRefresh: true;
		column: 'Remote Pharo Address' evaluated: [ :pharo | pharo displayString ];
		column: 'Connection' evaluated: [ :pharo | self gtConnectingStatusFor: pharo ] width: 100;
		column: 'Debugger' evaluated: [ :pharo | self gtDebuggerStatusFor: pharo ] width: 100;
		send: [ :each | each connect ];
		act: [:table | self refresh] iconName: #refresh entitled: 'Clean and Refresh';
		selectionAct: [:table | table selection openBrowser] 
		iconName: #smallWindow entitled: 'Open Browser';
		selectionAct: [:table | table selection openPlayground] 
		iconName: #workspace entitled: 'Open Playground';
		selectionAct: [:table | table selection openProcessBrowser] 
		iconName: #processBrowser entitled: 'Open ProcessBrowser';
		selectionAct: [:table | table selection connectFullIDE. table update] 
		iconName: #smallDebug entitled: 'Connect Debugger';
		selectionAct: [:table | self disconnectFrom: table selection. table update] entitled: 'Disconnect'