as yet unclassified
buildFor: anEGrammar
	
	| oldSize |
	oldSize := 0.
	[oldSize := self size.
	self update: anEGrammar]
		doWhileFalse: [oldSize = self size]