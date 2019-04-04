accessing
defenseStrengthNamed: aStrengthSymbol
	"Sets the defense strength to the strength with the specified name."
	self defenseStrength: (DNMStrength strengthNamed: aStrengthSymbol).
	