initialization
setUpAvailableTools

	TlpTool allSubclassesDo: [ :each | 
		each registerOn: tools]