requests
applyChangesToServer
	| changes |
	changes := EpMonitor current log entries
		collect: [ :each | each content asTransferredByValue ].
	self evaluate: [ changes asLocalObject do: #applyCodeChange ]