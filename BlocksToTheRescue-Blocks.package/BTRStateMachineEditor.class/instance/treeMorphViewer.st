views
treeMorphViewer

	| editButton |
	editButton := IconicButton new
		labelGraphic: ((Smalltalk at: #BTRIcons ifPresent: #penIcon) ifNil: [ToolIcons exception]);
		color: Color transparent;
		in: [:btn | btn layoutFrame: (LayoutFrame fractions: (1@0 corner: 1@0) offsets: (btn width negated@0 corner: btn width negated@0))];
		target: self;
		actionSelector: #openEditorAsWindow;
		yourself.

	^ (PluggableTreeMorph
		on: self
		list: #stateList
		selected: #selected
		changeSelected: #selected:)
		columns: {
			[:listMorph | (listMorph filteredItems collect: [:item |
				item preferredWidthOfColumn: 1]) max].
			nil "take all the space"};
		layoutPolicy: ProportionalLayout new;
		addMorph: editButton;
		width: 300;
		flag: #todo;
		yourself.