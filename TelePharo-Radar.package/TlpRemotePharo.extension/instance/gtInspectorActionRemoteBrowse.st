*TelePharo-Radar
gtInspectorActionRemoteBrowse
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ self openBrowser ];
		icon: (Smalltalk ui iconNamed: #smallWindow);
		title: 'Remote Browser'