animations
moveAnimation

	^ (AnimPathAnimation
		on: self morph
		between: {self morph position. self positionQueue removeFirst}
		within: self animationTime) 