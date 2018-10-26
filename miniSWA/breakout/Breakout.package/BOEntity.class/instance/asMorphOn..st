appearance
asMorphOn: aBOGameField
	| morph |
	morph := self morphClass new
		entity: self;
		yourself.
	aBOGameField addMorph: morph.
	self
		morph: morph;
		addDependent: morph;
		forceBoundsUpdates.
	^ morph