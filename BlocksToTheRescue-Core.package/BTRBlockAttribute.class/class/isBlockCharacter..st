fileIn/Out
isBlockCharacter: aCharacter

	^ aCharacter = self blockCharacter or: [aCharacter = self blockCharacter asString]