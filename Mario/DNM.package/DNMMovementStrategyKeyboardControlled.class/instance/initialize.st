initialization
initialize
	super initialize.
	actionByKeySymbol := (Dictionary new)
		add: #up->[ self representedObject jump]; 
		add: #down->[ self representedObject moveDown];
		add: #right->[ self representedObject moveRight];
		add: #left->[ self representedObject moveLeft];
		yourself.
