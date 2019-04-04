accessing
randomized
	actionByKeySymbol := Dictionary new
		add: #left -> (actionByKeySymbol atRandom);
		add: #right -> (actionByKeySymbol atRandom);
		add: #up -> (actionByKeySymbol atRandom);
		add: #down -> (actionByKeySymbol atRandom);
		yourself.