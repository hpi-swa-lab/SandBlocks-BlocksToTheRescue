as yet unclassified
inlineView

	^ (PluggableDropDownListMorph new
		model: self;
		listSelector: #readOnlyCollection;
		selectionSelector: #index;
		selectionSetter: #index:)
			installDropDownList;
			yourself