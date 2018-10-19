entity-ops
createEntityWith: entityConfigDict

	^ self register: (self entityClass newFrom: entityConfigDict)