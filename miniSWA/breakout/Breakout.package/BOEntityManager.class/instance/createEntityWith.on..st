entity-ops
createEntityWith: entityConfigDict on: gameField

	^ self register: (self entityClass newFrom: entityConfigDict) on: gameField