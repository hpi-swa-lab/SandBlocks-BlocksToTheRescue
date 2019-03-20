as yet unclassified
unregister

	(Smalltalk at: #ECEntryHook)
		ifNotNil: [:ECEntryHook | ECEntryHook removeHookNamed: self hookSymbol].