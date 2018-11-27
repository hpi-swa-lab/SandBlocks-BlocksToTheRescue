animations
withExpandedFinishBlock: anAnimation

	| oldFinishBlock |
	oldFinishBlock := anAnimation finishBlock.
	anAnimation finishBlock: [oldFinishBlock value. self animationQueue removeFirst. self playNextAnimation].
	^ anAnimation