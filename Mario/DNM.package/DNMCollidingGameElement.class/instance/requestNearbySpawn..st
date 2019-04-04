accessing
requestNearbySpawn: aGameElement
	"Request to spawn aGameElement at a position that is next to me."
	self placeNextToMe: aGameElement.
	^self requestSpawn: aGameElement
	