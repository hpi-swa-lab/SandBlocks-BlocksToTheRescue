as yet unclassified
removedMorph: aMorph

	self leftElement = aMorph
		ifTrue: [self leftElement: self createSpacer].
		
	self rightElement = aMorph
		ifTrue: [self rightElement: self createSpacer].