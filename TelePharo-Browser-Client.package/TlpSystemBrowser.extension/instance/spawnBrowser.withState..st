*TelePharo-Browser-Client
spawnBrowser: aBrowserClass withState: navigationBlock
	| browser |
	browser := aBrowserClass on: self navigationEnvironment systemScope: self systemScope.
	browser disableSlowPlugins.
	browser prepareInitialStateBy: navigationBlock.
	^browser open