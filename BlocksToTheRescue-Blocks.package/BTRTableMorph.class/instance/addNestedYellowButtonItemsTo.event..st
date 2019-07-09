menu
addNestedYellowButtonItemsTo: aMenu event: anEvent
	
	aMenu
		addItem: [:item | self initializeRowSubmenuIn: item event: anEvent];
		addItem: [:item | self initializeColumnSubmenuIn: item event: anEvent];
		addLine;
		add: 'add adjustment-row' translated target: self selector: #addAdjustmentRow;
		add: 'remove adjustment-row' translated target: self selector: #removeAdjustmentRow;
		addLine.