as yet unclassified
shouldBeSerializedAsLiteral: anObject

	^ anObject isLiteral or: [anObject inheritsFromAnyIn: {}]