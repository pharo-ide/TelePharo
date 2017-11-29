*TelePharo-Browser-Client
spawnQueryBrowserOn: aQuery
	| browser |
	browser := ClyQueryBrowser on: self navigationEnvironment scopes: {self systemScope}.
	browser disableSlowPlugins.
	browser showResultOf: aQuery.
	^browser open