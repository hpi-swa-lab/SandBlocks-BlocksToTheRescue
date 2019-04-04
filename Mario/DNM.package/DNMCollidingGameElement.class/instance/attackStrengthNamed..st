accessing
attackStrengthNamed: anStrenghSymbol
	"Sets the attack strength to the strength with the specified name."
	self attackStrength: (DNMStrength strengthNamed: anStrenghSymbol).
	