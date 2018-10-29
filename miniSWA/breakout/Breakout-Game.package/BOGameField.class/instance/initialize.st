initialization
initialize

	super initialize.
	self
		name: #GameField;
		boundsEntity: BOGameFieldBounds new;
		entities: ((OrderedCollection new: self defaultEntityCount)
			add: self boundsEntity;
			yourself);
		updateTickTime;
		layoutInset: 0;
		borderWidth: 0;
		initializeDefaultGameState.