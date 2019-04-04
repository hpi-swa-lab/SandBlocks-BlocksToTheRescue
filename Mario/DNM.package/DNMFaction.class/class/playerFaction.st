accesing
playerFaction
	^self new
		name: #playerFaction;
		addHostilityTowards: #enemyFaction;
		addHostilityTowards: #aggressiveFaction;
		yourself