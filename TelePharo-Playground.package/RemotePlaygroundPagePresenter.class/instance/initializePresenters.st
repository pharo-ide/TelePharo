initialization
initializePresenters

	self initializeToolbar.
	self initializeStatusbar.

	(text := self newCode)
		interactionModel: RemotePlaygroundInteractionModel new;
		lineNumbers: self showLineNumbers;
		overridingContextMenu;
		contextMenu: [ (self menuActionsFor: text) asMenuPresenter ];
		contextKeyBindings: (self menuActionsFor: text) asKMCategory;
		whenTextChangedDo: [ :aString | page contents: aString ].
		
	text eventHandler 
		whenKeyUpDo: [ :event | self updateLineNumber ];
		whenMouseUpDo: [ :event | self updateLineNumber ];
		"before taking focus position will be nil, ensure I have the correct one"
		whenFocusReceivedDo: [ self updateLineNumber ].
		
	self updatePresenter