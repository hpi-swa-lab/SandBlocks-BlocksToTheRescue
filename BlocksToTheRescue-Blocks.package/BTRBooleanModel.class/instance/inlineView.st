views
inlineView

	^ self addDependent: (
		self class defaultViewClass new
			model: self;
			yourself)