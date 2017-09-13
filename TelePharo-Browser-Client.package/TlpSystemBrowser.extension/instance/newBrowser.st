*TelePharo-Browser-Client
newBrowser

	| browser |
	browser := ClyPackageBrowser on: self navigationEnvironment systemScope: self systemScope.
	browser disableSlowPlugins.
	^browser