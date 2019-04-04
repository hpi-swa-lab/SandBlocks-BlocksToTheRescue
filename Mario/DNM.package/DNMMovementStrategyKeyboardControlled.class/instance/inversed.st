accessing
inversed
	actionByKeySymbol := Dictionary new
		add: #left -> (actionByKeySymbol at: #right);
		add: #right -> (actionByKeySymbol at: #left);
		add: #up -> (actionByKeySymbol at: #down);
		add: #down -> (actionByKeySymbol at: #up);
		yourself.