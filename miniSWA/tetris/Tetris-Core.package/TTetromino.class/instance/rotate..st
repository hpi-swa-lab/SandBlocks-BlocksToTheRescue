rotation
rotate: direction

	self blocks do: [:each | each rotate: direction around: self rotationCenter].
	self changed.