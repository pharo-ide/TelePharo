*TelePharo-Browser-Client
openOnClass: aClass

	self spawnBrowser: ClyFullBrowser withState: [:browser |
		browser selectClass: aClass]