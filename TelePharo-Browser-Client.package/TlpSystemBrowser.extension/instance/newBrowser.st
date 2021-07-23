*TelePharo-Browser-Client
newBrowser

	| browser |
	browser := ClyFullBrowserMorph on: self navigationEnvironment systemScope: self systemScope.
	browser disableSlowPlugins.
	^browser