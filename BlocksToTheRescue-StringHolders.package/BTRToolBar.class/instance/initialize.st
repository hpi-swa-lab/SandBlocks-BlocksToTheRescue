initialization
initialize

	super initialize.
	self
		width: 320;
		layoutPolicy: (TableLayout new);
		listDirection: #rightToLeft;
		color: (UserInterfaceTheme current get: #color for: SystemWindow);
		tools: Dictionary new;
		initializeTools;
		buildButtons.