actions
basicAccept

	self hasUnacceptedEdits: false.
	self blockMethod install.
	self model method selector ~= self blockMethod selector 
		ifTrue: [self selectorChanged]
		ifFalse: 
			[self contentsChanged.
			self model changed: #annotation.]
