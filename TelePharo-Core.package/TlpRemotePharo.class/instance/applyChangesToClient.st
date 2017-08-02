requests
applyChangesToClient

	| changes |
	changes := self evaluate: [ 
		EpMonitor current log entries collect: [:each | each content asTransferredByValue ]].
	
	changes asLocalObject do: #applyCodeChange