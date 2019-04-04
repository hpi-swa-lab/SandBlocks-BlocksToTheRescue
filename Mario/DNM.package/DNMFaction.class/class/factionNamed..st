accesing
factionNamed: aFactionName
	^self factionsByName at: aFactionName ifAbsent: [self error: aFactionName, ' is not a Faction.'].