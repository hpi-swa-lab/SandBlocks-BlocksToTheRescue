accessing-private
buildMorphOf: aBOEntity on: aBOGameField
	| morph |
	morph := aBOEntity newMorph
		setProperty: #entity toValue: aBOEntity;
		yourself.
	aBOGameField addMorph: morph.
	aBOEntity
		morph: morph;
		addDependent: morph;
		forceBoundsUpdates.
	^ morph