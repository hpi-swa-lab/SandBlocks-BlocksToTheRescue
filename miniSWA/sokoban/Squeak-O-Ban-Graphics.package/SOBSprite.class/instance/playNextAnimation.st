animations
playNextAnimation

	self animationQueue ifNotEmpty: [self startAnimation: self animationQueue first value].