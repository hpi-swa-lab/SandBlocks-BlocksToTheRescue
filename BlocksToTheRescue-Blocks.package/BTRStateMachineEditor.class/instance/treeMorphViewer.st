views
treeMorphViewer

	^ (PluggableTreeMorph
		on: self
		list: #stateList
		selected: #selected
		changeSelected: #selected:)
		columns: (ObjectExplorerWrapper showContentsInColumns
			ifTrue: [{
				[:listMorph | (listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 1]) max].
				nil "take all the space"}]);
		flag: #todo;
		yourself