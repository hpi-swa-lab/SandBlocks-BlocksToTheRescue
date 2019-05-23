*BlocksToTheRescue-Core
btrEquals: anotherMorph

	^ ("self bounds = anotherMorph bounds"true"layouts and stuff break everything"
	and: [self submorphs size = anotherMorph submorphs size]
	and: [self submorphs with: anotherMorph submorphs do: [:first :second | (first btrEquals: second) ifFalse: [^ false]]. true.]
	and: [self color = anotherMorph color]
	and: [self borderWidth = anotherMorph borderWidth])
	and: [self borderColor = anotherMorph borderColor]