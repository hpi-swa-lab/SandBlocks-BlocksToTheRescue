updating
applyViewData: aDictionary

	aDictionary
		at: #position ifPresent: [:center | self center: (center + self owner position)].