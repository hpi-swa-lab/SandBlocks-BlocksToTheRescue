as yet unclassified
completion

	^ (Text 
		string: (BTRBlockAttribute blockCharacter asString)
		attributes: {(BTRBlockAttribute new blockModel: contents new)})