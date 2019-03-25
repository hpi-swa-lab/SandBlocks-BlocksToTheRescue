as yet unclassified
asTextFrom: aBTRBlockModel

	^ (Text
			string: self blockCharacter asString
			attribute: (self new
								blockModel: aBTRBlockModel;
								yourself)) 