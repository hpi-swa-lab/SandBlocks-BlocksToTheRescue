as yet unclassified
initialize

	super initialize.
	(Smalltalk at: #ECEntryHook)
		ifNotNil: [:ECEntryHook | ECEntryHook registerHook: self new named: self hookSymbol].