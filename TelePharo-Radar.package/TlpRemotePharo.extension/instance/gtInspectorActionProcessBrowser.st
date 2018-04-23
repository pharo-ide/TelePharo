*TelePharo-Radar
gtInspectorActionProcessBrowser
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ self openProcessBrowser ];
		icon: (Smalltalk ui iconNamed: #processBrowser);
		title: 'Remote Process Browser'