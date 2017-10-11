*TelePharo-Browser-Client
browseQueryResultOf: aMethodQuery
	| browser |
	browser := ClyQueryBrowser on: self navigationEnvironment scopes: {self systemScope}.
	browser disableSlowPlugins.
	browser show: aMethodQuery inScope: self systemScope.
	^browser open