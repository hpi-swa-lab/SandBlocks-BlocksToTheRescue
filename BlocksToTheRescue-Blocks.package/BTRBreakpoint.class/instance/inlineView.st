interface-views
inlineView

	Transcript showln: 'new iv'.
	^ self addDependent: (
		BTRBreakpointMorph new
			blockModel: self;
			yourself)