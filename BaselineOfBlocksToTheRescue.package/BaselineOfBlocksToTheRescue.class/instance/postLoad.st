baseline
postLoad

	Scanner initializeTypeTable.
	(Smalltalk at: #BTRAutocompletionHook)
		ifNotNil: [:hook | hook initialize].