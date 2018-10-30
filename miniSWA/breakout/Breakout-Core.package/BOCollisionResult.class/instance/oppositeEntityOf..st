accessing
oppositeEntityOf: aBOEntity

	^ aBOEntity == self ownEntity
		ifTrue: [self othersEntity]
		ifFalse: [self ownEntity]