as yet unclassified
rotate: direction around: aPoint

	self gridPosition: (self gridPosition rotateBy: direction centerAt: aPoint).
	self gridPosition: self gridPosition rounded.