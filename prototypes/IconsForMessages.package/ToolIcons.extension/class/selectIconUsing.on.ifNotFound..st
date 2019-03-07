*IconsForMessages
selectIconUsing: strategyCollection on: strategyContainer ifNotFound: notFoundBlock

	^ self
		selectIconUsing: strategyCollection
		on: strategyContainer
		perform: [ :strategy | strategyContainer perform: strategy]
		ifNotFound: notFoundBlock