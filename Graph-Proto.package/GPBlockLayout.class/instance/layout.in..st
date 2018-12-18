layout
layout: aMorph in: newBounds

	| differentGridFieldsSizes |  
	self morph: aMorph.
	self categorizeSubmorphsOf: aMorph.
	differentGridFieldsSizes := self calculateDifferentGridFieldsSizesIn: newBounds.
	
	self fieldDictionary associationsDo: [:each |
		each value do: [:morph | morph bounds: (differentGridFieldsSizes at: each key)]]