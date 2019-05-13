submorphs-add/remove
addAllMorphsInFrontOfLayer: aCollection

	aCollection do: [:morph | self addMorphInFrontOfLayer: morph].