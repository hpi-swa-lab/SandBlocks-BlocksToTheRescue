*BlocksToTheRescue-Core
parseBTRBlockStringSequenceFrom: aReadStream into: aWriteStream withAttributes: aRunArray

	| string |
	string :=  aReadStream upTo: Character startOfHeading.
	aWriteStream nextPutAll: string.
	aRunArray addLast: #() times: string size.
	aReadStream atEnd
		ifFalse: [ | attributes |
			aWriteStream nextPut: Character startOfHeading.
			string :=  aReadStream upTo: Character startOfText.
			attributes := [TextAttribute readAttributesFrom: string]
				on: Error
				do: [{}"Invalid store string results in empty text attributes. Start of Heading is still added, but blockattribute will be missing"].
			aRunArray addLast: attributes]