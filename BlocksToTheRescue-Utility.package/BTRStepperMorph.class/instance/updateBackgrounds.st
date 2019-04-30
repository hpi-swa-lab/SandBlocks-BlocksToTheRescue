stepping
updateBackgrounds

	self shouldIncrement ifTrue: [
		self upButton backgroundColor: Color darkGray.
		self downButton noBackground].
	self shouldDecrement ifTrue: [
		self downButton backgroundColor: Color darkGray.
		self upButton noBackground].