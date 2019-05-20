tests
testTransitionCallsEnter

	| model machine notification |
	model := self enterListenerModel.
	machine := model start.
	[machine transition: #transition]
		on: Notification
		do: [:not | notification := not].
	self assert: notification isNil not.
	self assert: #postEnter equals: (notification messageText at: #change).