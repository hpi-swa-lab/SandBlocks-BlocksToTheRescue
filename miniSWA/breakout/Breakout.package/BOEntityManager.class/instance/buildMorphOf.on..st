accessing-private
buildMorphOf: aBOEntity on: aBOGameField
	| morph |
	morph := aBOEntity newMorph.
	morph setProperty: #entity toValue: aBOEntity.
	aBOEntity morph: morph.
	aBOGameField addMorph: morph.
	aBOEntity addDependent: morph.
	^ morph