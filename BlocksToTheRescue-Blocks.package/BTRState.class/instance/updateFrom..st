accessing
updateFrom: aCollection

	| currentTransitionNames |
	currentTransitionNames := aCollection collect: [:transitionAssoc |
		(self transitions
			at: transitionAssoc key
			ifAbsentPut: [BTRStateTransition named: transitionAssoc key source: self name])
				updateFrom: transitionAssoc value.
		transitionAssoc key].
	(self transitions keys copyWithoutAll: currentTransitionNames)
		do: [:key | self transitions removeKey: key].