initialize-release
initialize

	| startState |
	self unlock.
	startState := self model startState.
	startState preEnter.
	self currentState: startState.
	startState postEnter.