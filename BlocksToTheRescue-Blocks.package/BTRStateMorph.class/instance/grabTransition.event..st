event handling
grabTransition: aBTRStateTransition event: evt

	| transitionMorph handle |
	transitionMorph := self stateMachineMorph morphForTransition: aBTRStateTransition.
	handle := transitionMorph handleForState: self state.
	evt hand newMouseFocus: handle.