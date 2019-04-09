comparing
= other

	"We need to implement = here and can not just call super because Forms do not implement = (for performance reasons I guess)."
	^ self class = other class
		and: [self hasImage
			ifTrue: [self image isPixelsEqualTo: other image]
			ifFalse: [other hasImage not]]