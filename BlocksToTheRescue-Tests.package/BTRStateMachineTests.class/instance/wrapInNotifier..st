utils
wrapInNotifier: aBlockClosure

	^ [ :state :transition :machine :change |
		aBlockClosure valueWithPossibleArgs: {state. transition. machine. change}.
		Notification signal: (Dictionary newFrom: {
			#state -> state.
			#transition -> transition.
			#machine -> machine.
			#change -> change})]