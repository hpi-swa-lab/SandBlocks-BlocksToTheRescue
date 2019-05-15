*BlocksToTheRescue-Core
ifHavingBlockMessageSelector: thenBlock else: elseBlock

	^ self beforeBlockMessageNode
		ifNil: [elseBlock value]
		ifNotNil: [thenBlock value]