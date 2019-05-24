menu
addNestedYellowButtonItemsTo: aMenu event: anEvent

	aMenu
		add: 'inspect morph' translated target: self submorphs first selector: #inspect;
		add: 'inspect model' translated target: self blockModel selector: #inspect;
		addLine;
		addItem: [:item | self initializeViewSubmenuIn: item event: anEvent];
		addLine;
		add: 'accept (s)' translated target: self selector: #accept;
		add: 'cancel (l)' translated target: self selector: #cancel;
		addLine;
		addExportMenuItems: aMenu hand: anEvent hand.