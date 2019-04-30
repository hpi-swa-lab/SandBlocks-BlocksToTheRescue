initialization
initialize

	super initialize.
	self
		color: Color gray;
		extent: 32@32;
		minimumExtent: 24@24;
		stopStepping;
		layoutPolicy: ProportionalLayout new;
		upButton: (self iconButtonFor: BTRIcons incrementArrowIcon);
		addMorph: self upButton fullFrame: (LayoutFrame fractions: (0@0 extent: 1@(1/2)));
		downButton: (self iconButtonFor: BTRIcons decrementArrowIcon);
		addMorph: self downButton fullFrame: (LayoutFrame fractions: (0@(1/2) extent: 1@(1/2))).