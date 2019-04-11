tests
testTransitionCallsLeave

	| model machine notification |
	model := self leaveListenerModel.
	machine := model start.
	[machine transition: #transition]
		on: Notification
		do: [:not | notification := not].
	self assert: notification isNil not.
	self assert: #postLeave equals: (notification messageText at: #transition).