as yet unclassified
format: aString

	^ (Compiler
		format: 'PlaceHolder ', aString
		in: Object
		notifying: nil) copyAfter: Character cr