updating
buildViewData

	^ Dictionary new
		addAll: {#position -> (self center - self owner position)};
		yourself