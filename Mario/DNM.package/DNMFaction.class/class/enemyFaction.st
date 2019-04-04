accesing
enemyFaction
	^self new
		name: #enemyFaction;
		addHostilityTowards: #playerFaction;
		yourself