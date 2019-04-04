accesing
aggressiveFaction
	^self new
		name: #aggressiveFaction;
		setHostileTowardsSelf;
		addHostilityTowards: #playerFaction;
		addHostilityTowards: #enemyFaction;
		addHostilityTowards: #harmlessFaction;
		yourself