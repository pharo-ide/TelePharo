system startup
startUp: resuming
	"Our system startUp hook: start all servers we manage.
	We do this using deferred startup actions to allow normal error handling."

	resuming ifTrue: [
		SessionManager default addDeferredStartupAction: [ 
			default ifNotNil: [ :each | default start ] ] ]