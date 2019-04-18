as yet unclassified
initialize

	super initialize.
	self 
		color: Color transparent;
		layoutPolicy: ProportionalLayout new;
		morphEditor: BTRMorphEditorMorph new;
		partsBin: Morph new;
		addMorph: self morphEditor fullFrame: (LayoutFrame fractions:  (0@0 corner: 1@1) offsets: (0@0 corner: self partsBinWidth negated @ 0));
		addMorph: self partsBin fullFrame: (LayoutFrame fractions:  (1@0 corner: 1@1) offsets: (self partsBinWidth negated @0 corner: 0 @ 0)).