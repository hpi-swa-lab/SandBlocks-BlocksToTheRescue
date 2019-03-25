baseline
postLoad

	Scanner initializeTypeTable.
	SmalltalkEditor initializeCmdKeyShortcuts.
	Smalltalk at: #BTRAutocompletionHook ifPresent: [:hook | hook initialize].