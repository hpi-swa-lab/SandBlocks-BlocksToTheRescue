animations
queueAnimation: anAnimation

	self animationQueue add: anAnimation.
	self animationQueue size = 1 ifTrue: [self playNextAnimation]