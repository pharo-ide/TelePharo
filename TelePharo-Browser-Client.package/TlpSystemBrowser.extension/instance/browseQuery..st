*TelePharo-Browser-Client
browseQuery: aQuery
	| browser |
	browser := ClyQueryBrowser on: self navigationEnvironment scopes: {self systemScope}.
	browser disableSlowPlugins.
	browser showResultOf: aQuery.
	^browser open