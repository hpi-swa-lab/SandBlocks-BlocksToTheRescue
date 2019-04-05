utils
wrapInNotifier: aBlockClosure

	^ [ :state :transition |
		aBlockClosure valueWithPossibleArgs: {state. transition}.
		Notification signal: (Dictionary newFrom: {
			#state -> state.
			#transition -> transition})]