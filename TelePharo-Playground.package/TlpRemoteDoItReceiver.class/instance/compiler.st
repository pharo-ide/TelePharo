accessing
compiler
	"Shameless hack to get at the CompilerContext of the remote system for help with remote CompletionContext"
	^ self remotePharo evaluate: [ nil compiler ]