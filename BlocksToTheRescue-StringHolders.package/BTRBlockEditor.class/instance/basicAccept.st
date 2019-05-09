actions
basicAccept

	self hasUnacceptedEdits: false.
	
	self model compileMessage: self currentSource notifying: nil.
	
	self model method selector ~= self blockMethod selector 
		ifTrue: [self selectorChanged]
		ifFalse: 
			[self contentsChanged.
			self model changed: #annotation.]
