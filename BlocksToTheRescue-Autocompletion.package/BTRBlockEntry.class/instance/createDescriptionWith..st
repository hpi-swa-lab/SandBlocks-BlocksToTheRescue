detail information
createDescriptionWith: anECContext

	^ ECEntryDescription
		label: self label
		title: contents name
		description: (BTRBlockAttribute asTextFrom: contents previewInstance)