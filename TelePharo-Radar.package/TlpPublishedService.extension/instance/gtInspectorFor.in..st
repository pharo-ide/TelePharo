*TelePharo-Radar
gtInspectorFor: aRemotePharo in: composite

	| pragmas |
	composite pager with: [ :browser |
		browser title: name.
		browser show: [:a  |
			pragmas := Pragma allNamed: #gtInspectorPresentationOrder: in: instance class.
			instance gtInspectorPresentationsFromPragmas: pragmas In: a inContext: nil]]