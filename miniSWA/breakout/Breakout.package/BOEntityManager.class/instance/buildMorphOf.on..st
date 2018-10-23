accessing-private
buildMorphOf: aBOEntity on: aBOGameField
	| morph |
	morph := aBOEntity newMorph.
	aBOGameField addMorph: morph.
	aBOEntity addDependent: morph.
	^ morph