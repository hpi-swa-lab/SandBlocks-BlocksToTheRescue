accessing
setStart: aBTRStateOrSymbol

	self startStateName: (aBTRStateOrSymbol isSymbol
		ifTrue: [aBTRStateOrSymbol]
		ifFalse: [aBTRStateOrSymbol name]).