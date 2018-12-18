stepping and presenter
stepAt: millisecondClockValue

	self time: millisecondClockValue / 1000 \\ self period.
	self center: self centerPoint + (Point r: self currentRadius degrees: self currentRotation).