views
treeMorphViewer

	^ (PluggableTreeMorph
		on: self
		list: #stateList
		selected: #selected
		changeSelected: #selected:)
		columns: {
			[:listMorph | (listMorph filteredItems collect: [:item |
				item preferredWidthOfColumn: 1]) max].
			[:listMorph | (listMorph filteredItems collect: [:item |
				item preferredWidthOfColumn: 2]) max].
			nil "take all the space"};
		layoutPolicy: ProportionalLayout new;
		addMorph: self editButton;
		width: 300;
		flag: #todo;
		yourself.