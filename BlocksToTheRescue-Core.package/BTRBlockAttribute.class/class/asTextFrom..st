as yet unclassified
asTextFrom: anObject

	^ Text
		string: self blockCharacter asString
		attribute: (anObject as: BTRBlockAttribute)