initialization
initializeLayout

	self
		color: self backgroundColor;
		extent: self defaultExtent;
		layoutPolicy: ProportionalLayout new;
		addMorph: self valueTextField fullFrame: (LayoutFrame
			fractions: (0@0 extent: 1@1)
			offsets: (0@0 extent: self stepper width negated@0));
		addMorph: self stepper fullFrame: (LayoutFrame
			fractions: (1@0 corner: 1@1) 
			offsets: (self stepper width negated@0 corner: 0@0)).