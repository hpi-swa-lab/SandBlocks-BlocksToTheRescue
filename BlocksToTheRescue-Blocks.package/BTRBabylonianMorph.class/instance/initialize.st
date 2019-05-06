as yet unclassified
initialize

	| morph |
	super initialize.
	self changeProportionalLayout.
	morph := PluggableButtonMorphPlus new
				label: '+Probe';
				action: [self addProbe];
				yourself.
	morph layoutFrame: (LayoutFrame fractions: (1@0 corner: 1@0) offsets: (4@0 corner: 0@0)).
	self addMorph: morph