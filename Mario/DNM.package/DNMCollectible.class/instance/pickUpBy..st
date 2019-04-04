collision attack protocoll
pickUpBy: aCollector
	aCollector applyEffect: (self effect).
	self 
		playSound: (self soundSymbol);
		removeFromWorld.