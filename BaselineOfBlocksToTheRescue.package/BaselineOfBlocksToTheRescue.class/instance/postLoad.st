baseline
postLoad

	Scanner initializeTypeTable.
	Smalltalk at: #BTRAutocompletionHook ifPresent: [:hook | hook initialize].