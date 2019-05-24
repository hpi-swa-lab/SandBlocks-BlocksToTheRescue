menu
addNestedYellowButtonItemsTo: aMenu event: evt 

	aMenu
		add: 'inspect morph' translated target: self selector: #inspect;
		add: 'inspect state' translated target: self state selector: #inspect icon: MenuIcons smallInspectItIcon;
		addLine;
		add: 'set as start' translated target: self selector: #setStart;
		add: 'rename' translated target: self selector: #rename;
		add: 'remove' translated target: self selector: #remove;
		addLine;
		addItem: [:item | self initializeTransitionSubmenuIn: item event: evt].