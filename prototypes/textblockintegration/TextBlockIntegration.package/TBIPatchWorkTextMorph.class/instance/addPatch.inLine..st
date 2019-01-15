as yet unclassified
addPatch: aTBIPatch inLine: aNumber

	(self background submorphs at: aNumber)
		addPatch: aTBIPatch.
	"It's not a bug, its a feature"
	self extent: self extent + (1@1).
	self extent: self extent - (1@1).