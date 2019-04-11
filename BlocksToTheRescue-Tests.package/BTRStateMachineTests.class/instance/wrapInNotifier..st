utils
wrapInNotifier: aBlockClosure

	^ [ :transition :state :machine |
		aBlockClosure valueWithPossibleArgs: {transition. state. machine}.
		Notification signal: (Dictionary newFrom: {
			#transition -> transition.
			#state -> state.
			#machine -> machine})]