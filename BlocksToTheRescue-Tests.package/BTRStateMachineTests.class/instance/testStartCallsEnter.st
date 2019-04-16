tests
testStartCallsEnter

	| model notification |
	model := self startOnlyModel.
	[model start]
		on: Notification
		do: [:not | notification := not].
	self assert: notification isNil not.
	self assert: #postEnter equals: (notification messageText at: #change).
	self assert: model startState equals: (notification messageText at: #state).