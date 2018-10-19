accessing-private
buildMorphOf: entity on: gameField
	| morph |
	morph := entity newMorph.
	gameField addMorph: morph.
	entity addDependent: morph.
	^ morph