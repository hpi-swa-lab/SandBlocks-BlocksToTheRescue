*IconsForMessages
selectIconUsing: strategyCollection with: anObject on: strategyContainer ifNotFound: notFoundBlock

	^ self
		selectIconUsing: strategyCollection
		on: strategyContainer
		perform: [ :strategy | strategyContainer perform: strategy with: anObject]
		ifNotFound: notFoundBlock