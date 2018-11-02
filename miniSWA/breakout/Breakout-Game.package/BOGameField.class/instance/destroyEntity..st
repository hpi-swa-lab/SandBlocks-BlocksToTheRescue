entities
destroyEntity: aBOEntity

	self entities remove: aBOEntity ifAbsent:["do nothing"].
	aBOEntity destroy.