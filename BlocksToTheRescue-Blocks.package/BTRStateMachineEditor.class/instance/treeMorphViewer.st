views
treeMorphViewer

	^ (PluggableTreeMorph on: self	list: #stateList selected: #selected changeSelected: #selected:)
		columns: self treeMorphColumns;
		width: 300;
		yourself