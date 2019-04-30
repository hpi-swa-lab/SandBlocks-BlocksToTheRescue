stepping
step

	self isMouseDown ifTrue: [
		self mouseDownStepCount: self mouseDownStepCount + 1.
		self shouldStepValue ifTrue: [
			self stepValue]].