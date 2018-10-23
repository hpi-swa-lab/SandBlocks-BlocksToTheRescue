accessing
world: aSWorld

	world := aSWorld.
	self world setModel: self.
	self world eventSystem: self eventSystem.
	