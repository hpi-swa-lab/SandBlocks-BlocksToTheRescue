*IconsForMessages
selectIconUsing: strategyCollection with: anObject ifNotFound: notFoundBlock

	^ self
		selectIconUsing: strategyCollection
		with: anObject
		on: self
		ifNotFound: notFoundBlock