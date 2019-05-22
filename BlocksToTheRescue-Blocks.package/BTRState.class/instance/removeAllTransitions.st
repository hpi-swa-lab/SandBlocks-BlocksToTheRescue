accessing
removeAllTransitions

	self transitions valuesDo: [:each | self removeTransition: each].