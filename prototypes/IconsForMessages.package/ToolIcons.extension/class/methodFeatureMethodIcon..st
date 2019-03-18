*IconsForMessages-Strategies
methodFeatureMethodIcon: method

	^ self
		selectIconUsing: #(methodIcon)
		on: method
		ifNotFound: []