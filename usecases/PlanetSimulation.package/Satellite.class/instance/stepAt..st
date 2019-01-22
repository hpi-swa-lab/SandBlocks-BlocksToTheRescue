stepping and presenter
stepAt: millisecondClockValue

	self time: millisecondClockValue / 1000 \\ self period.
	self center: self centerPoint + (Point r: (self owner width / 2 +  self currentRadius) degrees: self currentRotation).