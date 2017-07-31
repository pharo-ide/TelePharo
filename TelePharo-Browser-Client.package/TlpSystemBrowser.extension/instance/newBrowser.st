*TelePharo-Browser-Client
newBrowser

	| browser |
	browser := ClySystemBrowser on: self navigationEnvironment systemScope: self systemScope.
	browser disableSlowPlugins.
	^browser