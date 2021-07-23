binding
bindingOf: aString
	| key |

	key := aString asSymbol.
	"if there is no binding, I will include a key"
	(self localBindings includesKey: key)
		ifFalse: [ self addBinding: (SeamlessRemoteWorkspaceVariable key: key) ].
	^ self localBindings associationAt: key