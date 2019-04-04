accesing
initializeFactions
	FactionsByName := Dictionary new
		add: (#harmlessFaction -> (self harmlessFaction));
		add: (#enemyFaction -> (self enemyFaction));
		add: (#playerFaction -> (self playerFaction));
		add: (#aggressiveFaction -> (self aggressiveFaction));
		yourself.