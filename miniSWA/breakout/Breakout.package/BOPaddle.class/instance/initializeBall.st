entity-ops
initializeBall

	self ballSpawner ifNotNil: [:spawner |
		self ballEntity: spawner value.
		self addDependent: self ballEntity].