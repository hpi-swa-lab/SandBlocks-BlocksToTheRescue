menu
addNestedYellowButtonItemsTo: aMenu event: anEvent

	aMenu
		add: 'inspect view' translated target: self submorphs first selector: #inspect;
		add: 'inspect model' translated target: self blockModel selector: #inspect;
		addLine;
		addItem: [:item | self initializeViewSubmenuIn: item event: anEvent];
		addLine.
	self addInlineViewMenuTo: aMenu event: anEvent.
	aMenu
		add: 'accept (s)' translated target: self selector: #accept;
		add: 'cancel (l)' translated target: self selector: #cancel;
		addLine;
		addExportMenuItems: aMenu hand: anEvent hand.