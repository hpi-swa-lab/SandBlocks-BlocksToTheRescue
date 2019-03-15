as yet unclassified
isStartPoint

	^ self blockModel inputFlowCount = 0
		ifTrue: [false]
		ifFalse: [self blockModel role = #start]