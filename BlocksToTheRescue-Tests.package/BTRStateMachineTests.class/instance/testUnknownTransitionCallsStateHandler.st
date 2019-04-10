tests
testUnknownTransitionCallsStateHandler

	| model machine notification |
	model := self stateChangeModel.
	machine := model start.
	[machine transition: #unknownTransition]
		on: Notification
		do: [ :not | notification := not].
	self assert: notification isNil not.
	self assert: #unknownTransition equals: (notification messageText at: #transition).