*BlocksToTheRescue
parseBTRBlockStringSequenceFrom: aReadStream into: aWriteStream withAttributes: aRunArray

	| string |
	string :=  aReadStream upTo: Character startOfHeading.
	aWriteStream nextPutAll: string.
	aRunArray addLast: #() times: string size.
	(aReadStream atEnd)
		ifFalse: [
			string :=  aReadStream upTo: Character startOfText.
			aWriteStream nextPut: Character startOfHeading.
			aRunArray addLast: (TextAttribute readAttributesFrom: string)]