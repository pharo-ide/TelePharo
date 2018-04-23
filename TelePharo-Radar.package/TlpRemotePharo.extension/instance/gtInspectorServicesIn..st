*TelePharo-Radar
gtInspectorServicesIn: composite
	<gtInspectorPresentationOrder: 0> 
	
	registeredServices do: [ :each | 
		each gtInspectorFor: self in: composite ]