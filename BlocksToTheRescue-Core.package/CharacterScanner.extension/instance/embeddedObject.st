*BlocksToTheRescue-Core
embeddedObject

	pendingKernX := 0.
	((text attributesAt: lastIndex) reject: [:each | each anchoredMorph isNil])
		ifEmpty: [self placeEmbeddedObjectFrom: self missingAttribute]
		ifNotEmpty: [:attributes | attributes do: [:attr |
			"Try to placeEmbeddedObject: - if it answers false, then there's no place left"
			(self placeEmbeddedObjectFrom: attr) ifFalse:[^self crossedX]]].
	
	"Note: if ever several objects are embedded on same character, only indent lastIndex once"
	lastIndex := lastIndex + 1.
	^false