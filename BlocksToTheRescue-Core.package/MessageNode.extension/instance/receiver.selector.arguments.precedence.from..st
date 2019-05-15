*BlocksToTheRescue-Core
receiver: rcvr selector: aSelector arguments: args precedence: p from: encoder 
	"Compile."

	self receiver: rcvr
		arguments: args
		precedence: p.
	originalSelector := aSelector.
	self noteSpecialSelector: aSelector.
	(self transform: encoder)
		ifTrue: 
			[selector isNil ifTrue:
				[selector := SelectorNode new 
								key: (MacroSelectors at: special)
								code: #macro]]
		ifFalse: 
			[selector := encoder encodeSelector: aSelector.
			rcvr == NodeSuper ifTrue: [encoder noteSuper]].
	self pvtCheckForPvtSelector: encoder.
	aSelector isBTRBlockModel
		ifTrue: [self beforeBlockMessageNode: (MessageNode new
				receiver: (encoder encodeLiteral: aSelector)
				selector: self aboutToBeCalledSelector
				arguments: {}
				precedence: 1
				from: encoder )].