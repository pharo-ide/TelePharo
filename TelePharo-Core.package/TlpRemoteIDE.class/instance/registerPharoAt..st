connecting
registerPharoAt: aTCPAddress 
	
	^self registerPharoAt: aTCPAddress ifExist: [ :found | found ]