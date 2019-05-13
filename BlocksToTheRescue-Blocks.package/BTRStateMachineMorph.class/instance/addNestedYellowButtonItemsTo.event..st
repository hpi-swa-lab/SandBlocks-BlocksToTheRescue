menu
addNestedYellowButtonItemsTo: aMenu event: evt 

	aMenu
		add: 'inspect morph' translated target: self selector: #inspect;
		add: 'inspect model' translated target: self blockModel selector: #inspect;
		addLine;
		addItem: [:item | self initializeStateSubmenuIn: item event: evt];
		addLine;
		add: 'accept (s)' translated target: self selector: #accept;
		add: 'cancel (l)' translated target: self selector: #cancel;
		addLine;
		addExportMenuItems: aMenu hand: evt hand.