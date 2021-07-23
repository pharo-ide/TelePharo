*TelePharo-Browser-Client
openOnClass: aClass

	self spawnBrowser: ClyFullBrowserMorph withState: [:browser |
		browser selectClass: aClass]