*TelePharo-Debugger
openInterractiveDebuggerOn: process context: context label: title fullView: bool notification: notificationString
	"Open a notifier in response to an error, halt, or notify. A notifier view
	just shows a short view of the sender stack and provides a menu that
	lets the user open a full debugger."

	| debugSession |

	debugSession := DebugSession named: title on: process startedAt: context. 
	
	debugSession logStackToFileIfNeeded.

	[
		[ Smalltalk tools debugger 
				openOn: debugSession withFullView: bool andNotification: notificationString.
		] on: Error do: [ :ex | 	debugSession signalDebuggerError: ex] .
	] forkNamed: 'remote debugging process'.	
	
	process suspend.