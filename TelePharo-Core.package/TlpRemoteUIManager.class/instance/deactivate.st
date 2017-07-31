hack startup
deactivate

	| sender |
	localUIManager deactivate.
	
	sender := thisContext sender.
	(sender receiver == UIManager and: [sender selector == #default:]) ifFalse: [ ^self ].
	localUIManager := sender tempAt: 1.

	sender tempAt: 1 put: self. 