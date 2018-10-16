as yet unclassified
spawnPartical
	
	| sIPartical |
	sIPartical := SIPartical new.
	self sIParticals add: sIPartical.
	self addMorph: sIPartical.
	sIPartical setPosition: (self sIPlayer topCenter).