initialization
initialize
	super initialize.
	actionByKeySymbol := Dictionary new.
	actionByKeySymbol
		add: #f->[self representedObject tryToUseAbility: #fireballAbility];
		add: #e->[self representedObject tryToUseAbility: #catAbility].