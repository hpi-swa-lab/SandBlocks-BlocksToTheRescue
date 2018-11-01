animations
turnAnimation

	self morph rotationDegrees abs = 360 ifTrue: [self morph rotationDegrees: 0].
	^ (AnimPropertyAnimation 
		on: self morph
		property: #rotationDegrees
		start: self morph rotationDegrees
		end: (self angleFrom: self morph position to: self positionQueue first)
		duration: self animationTime) 