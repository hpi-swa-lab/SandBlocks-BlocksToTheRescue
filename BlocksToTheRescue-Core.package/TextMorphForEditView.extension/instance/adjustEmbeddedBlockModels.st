*BlocksToTheRescue-Core
adjustEmbeddedBlockModels

	self text embeddedBlockModels
		reject: [:model | model dependents includes: self]
		thenDo: [:model | model addDependent: self].