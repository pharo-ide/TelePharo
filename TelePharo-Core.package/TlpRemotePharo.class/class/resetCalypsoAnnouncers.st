instance creation
resetCalypsoAnnouncers
	"This method resets all announcers of Calypso. When the network is broken, the server keeps the old announcers, so we need reset them"
	
	| objectsWithAnnoucers announcersWithSubscribers |
	
	objectsWithAnnoucers := ClyQueryResult allSubInstances select: [ :each | each announcer isNotNil ].
	announcersWithSubscribers := objectsWithAnnoucers 	collect: [ :each | each announcer ].
	announcersWithSubscribers do: [ :each | each subscriptions reset ]
