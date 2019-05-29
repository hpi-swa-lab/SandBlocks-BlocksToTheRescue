initialization
initializeLayout

	self
		color: self backgroundColor;
		extent: 32@32;
		minimumExtent: 24@24;
		layoutPolicy: ProportionalLayout new;
		addMorph: self upButton fullFrame: (LayoutFrame fractions: (0 @ 0 extent: 1 @ 0.5));
		addMorph: self downButton fullFrame: (LayoutFrame fractions: (0 @ 0.5 extent: 1 @ 0.5)).