default
ensureDefaultInstance

	default ifNil: [ 
		^default := (self for: TlpRemoteIDE default) start].
	
	default ide = TlpRemoteIDE default ifFalse: [ 
		default stop. 
		^default := (self for: TlpRemoteIDE default) start ].
	
	^default