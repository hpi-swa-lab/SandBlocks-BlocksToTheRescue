tests
testStartCallsEnter

	| model notification |
	model := self exampleModel.
	[model start]
		on: Notification
		do: [ :not | notification := not].
	self assert: notification isNil not.
	self assert: #enter equals: (notification messageText at: #transition).
	self assert: model startState equals: (notification messageText at: #state).