accessing
factionNamed: aFactionName
	"Changes the faction of this object to the faction with the specified name"
	self faction: (DNMFaction factionNamed: aFactionName).