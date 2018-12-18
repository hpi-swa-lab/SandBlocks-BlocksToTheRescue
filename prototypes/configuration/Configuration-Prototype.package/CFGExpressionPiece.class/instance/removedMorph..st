as yet unclassified
removedMorph: aMorph

	(aMorph = self leftElement)
		ifTrue: [self leftElement: self createSpacer].
		
	(aMorph = self rightElement)
		ifTrue: [self rightElement: self createSpacer].