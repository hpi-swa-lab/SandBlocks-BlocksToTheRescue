geometry testing
containsPoint: aPoint

	^ (super containsPoint: aPoint)
		or: [self dockingMorphDict values anySatisfy: [:m | m containsPoint: aPoint]]