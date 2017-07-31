*TelePharo-Browser-Client
browseMethodsFromQuery: aMethodQuery
	| browser |
	browser := ClyMethodBrowser on: self navigationEnvironment scopes: {self systemScope}.
	browser disableSlowPlugins.
	browser show: aMethodQuery inScope: self systemScope.
	^browser open