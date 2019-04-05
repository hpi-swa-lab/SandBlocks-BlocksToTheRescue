actions
basicAccept

	self hasUnacceptedEdits: false.
	self content install.
	self model method selector ~= self content selector 
		ifTrue: [self selectorChanged]
		ifFalse: 
			[self contentsChanged.
			self model changed: #annotation.]
