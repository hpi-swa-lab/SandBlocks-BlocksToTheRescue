as yet unclassified
asTextFrom: aBTRBlockModel

	^ Text
		string: self blockCharacter asString
		attribute: (aBTRBlockModel as: BTRBlockAttribute)