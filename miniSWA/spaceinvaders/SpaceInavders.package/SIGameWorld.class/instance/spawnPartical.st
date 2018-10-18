as yet unclassified
spawnPartical
	
	| sIPartical |
	sIPartical := SIPartical new.
	self sIParticals add: sIPartical.
	self addMorph: sIPartical.
	sIPartical setRelativePosition: (self sIPlayer topCenter).