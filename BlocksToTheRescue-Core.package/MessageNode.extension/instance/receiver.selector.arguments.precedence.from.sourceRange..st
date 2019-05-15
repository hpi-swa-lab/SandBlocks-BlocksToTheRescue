*BlocksToTheRescue-Core
receiver: rcvr selector: selName arguments: args precedence: p from: encoder sourceRange: range
	"Compile."
	((selName == #future) or:[selName == #future:]) ifTrue:
		[Smalltalk at: #FutureNode ifPresent:
			[:futureNode|
			^futureNode new
				receiver: rcvr
				selector: selName
				arguments: args
				precedence: p
				from: encoder
				sourceRange: range]].
	(rcvr isFutureNode
	 and: [rcvr futureSelector == nil]) ifTrue:
		"Transform regular message into future"
		[^rcvr futureMessage: selName
			arguments: args
			from: encoder
			sourceRange: range].

	encoder noteSourceRange: range forNode: self.
	selName isBTRBlockModel
		ifTrue: [self beforeBlockMessageNode: (MessageNode new
					receiver: (encoder encodeLiteral: selName)
					selector: self aboutToBeCalledSelector
					arguments: {}
					precedence: 1
					from: encoder
					sourceRange: range).
				self afterBlockMessageNode: (MessageNode new
					receiver: (encoder encodeLiteral: selName)
					selector: self calledSelector
					arguments: (Array with:  (MessageNode new basicReceiver: rcvr selector: selName arguments: args precedence: p from: encoder sourceRange: range ))
					precedence: 1
					from: encoder
					sourceRange: range)].
	^self
		receiver: rcvr
		selector: selName
		arguments: args
		precedence: p
		from: encoder