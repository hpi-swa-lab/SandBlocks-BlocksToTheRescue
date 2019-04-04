views
inlineView

	^ self addDependent: (
		self class defaultViewClass new
			blockModel: self;
			yourself)