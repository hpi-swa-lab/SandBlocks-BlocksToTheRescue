accessing
abilityStrategy
	abilityStrategy representedObject ifNil: [abilityStrategy representedObject: (self representedObject)].
	^abilityStrategy