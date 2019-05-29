accessing
set: aNumber add: anEState

	| difference |
	difference := aNumber - self states size.
	difference > 0
		ifTrue: [difference timesRepeat: [self states add: EStateSet new]].
	(self set: aNumber) add: anEState.
	^ anEState

	