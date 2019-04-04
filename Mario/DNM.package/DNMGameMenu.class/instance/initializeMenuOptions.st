initialization
initializeMenuOptions
	self 
		defaultTarget: self;
		add: (self textFor: #install) action: #install icon: MenuIcons smallSaveIcon;
		add: (self textFor: #startGame) action: #startNewGame icon: MenuIcons smallRedoIcon;
		add: (self textFor: #exitGame) action: #exitGame icon: MenuIcons smallQuitNoSaveIcon;
		add: (self textFor: #chooseLanguage) action: #changeLanguage icon: MenuIcons smallLanguageIcon;
		add: (self textFor: #chooseSpecification) action: #chooseSpecification icon: MenuIcons smallProjectIcon.
