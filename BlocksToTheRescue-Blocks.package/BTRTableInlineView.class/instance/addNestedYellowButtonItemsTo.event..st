menu
addNestedYellowButtonItemsTo: aMenu event: anEvent
	
	aMenu
		addItem: [:item | self initializeRowSubmenuIn: item event: anEvent];
		addItem: [:item | self initializeColumnSubmenuIn: item event: anEvent];
		addLine.