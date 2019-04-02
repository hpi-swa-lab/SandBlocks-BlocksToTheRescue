interface-views
inlineView

	^ self addDependent: (
		BTRBreakpointMorph new
			blockModel: self;
			yourself)