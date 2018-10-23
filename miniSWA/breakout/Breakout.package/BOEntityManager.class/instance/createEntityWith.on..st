entity-ops
createEntityWith: entityConfiguration on: aBOGameField

	^ self register: (self entityClass newFrom: entityConfiguration) on: aBOGameField