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
				do: [{}"When an error is encountered while reading the TextAttributes the SOH is still added but attributes will be empty."].
			aRunArray addLast: attributes]