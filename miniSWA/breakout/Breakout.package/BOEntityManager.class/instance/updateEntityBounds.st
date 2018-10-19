entity-ops
updateEntityBounds
	self entityMorphMap
		keysAndValuesDo: [:entity :morph |
			morph update: #position with: entity position.
			morph update: #size with: entity extent.].