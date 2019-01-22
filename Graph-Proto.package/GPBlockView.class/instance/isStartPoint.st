as yet unclassified
isStartPoint

	^ self blockModel inputFlowCount = 0
		ifTrue: [false]
		ifFalse: [self blockModel inputFlows noneSatisfy: [:each | each hasConnection]]