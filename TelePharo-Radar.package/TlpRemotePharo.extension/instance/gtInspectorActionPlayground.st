*TelePharo-Radar
gtInspectorActionPlayground
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ self openPlayground ];
		icon: (Smalltalk ui iconNamed: #workspace);
		title: 'Remote Playground'