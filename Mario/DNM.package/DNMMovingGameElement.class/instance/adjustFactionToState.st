initialization
adjustFactionToState
	"Only changes the faction, if the (new) state has a faction."
	self state faction
		ifNotNil: [self factionNamed: self state faction].