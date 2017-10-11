*TelePharo-Browser-Client
newBrowser

	| browser |
	browser := ClyFullBrowser on: self navigationEnvironment systemScope: self systemScope.
	browser disableSlowPlugins.
	^browser