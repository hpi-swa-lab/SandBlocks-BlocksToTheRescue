as yet unclassified
addSpacersAround: aMorph

	self 
		removeMorph: aMorph;
		leftElement: self createSpacer;
		addMorph: aMorph behind: self leftElement;
		rightElement: self createSpacer.