as yet unclassified
acceptDroppingMorph: aMorph event: evt

	super acceptDroppingMorph: aMorph event: evt. 
	(aMorph isKindOf: GPParallelBlockView)
		ifTrue: [self adaptToMorph: aMorph.
				aMorph registerErrorContext: self]. 
	
	