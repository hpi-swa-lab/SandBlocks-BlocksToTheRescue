entity-ops
createEntityWith: entityConfiguration

	^ self register: (self entityClass newFrom: entityConfiguration)