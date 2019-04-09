accessing
selector: anObject

	selector := anObject.
	self parameterNames size ~= self selector keywords size
		ifTrue: [self parameterNames: nil "This probably means something went wrong, but just to be sure"].