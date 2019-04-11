initialize-release
initialize

	| startState |
	super initialize.
	startState := self model startState.
	startState preEnter.
	self currentState: startState.
	startState postEnter.