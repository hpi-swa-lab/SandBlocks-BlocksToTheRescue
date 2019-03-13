*BlocksToTheRescue
fromBTRBlockString: aString
	"Answer an instance of me whose characters are those of the argument, aString."
	| stream resultString runs |
	(aString includesAllOf:{Character value: 1 . Character value: 2})
		ifFalse: [^ self string: aString attributes:  #()].
		
	stream := ReadStream on: aString.
	resultString := ''.
	runs := RunArray new.
	[stream atEnd]
		whileFalse: [ | string |
			string :=  stream upTo: (Character value: 1).
			resultString := resultString, string.
			runs addLast: #() times: string size.
			(stream last = (Character value: 1))
				ifTrue: [ | attributes attributeStream |
					attributes := OrderedCollection new.
					string :=  stream upTo: (Character value: 2).
					attributeStream := ReadStream on: string.
					[attributeStream atEnd]
						whileFalse: [attributes addLast: (TextAttribute newFrom: attributeStream)].
					resultString := resultString, (String value: 1).
					runs addLast: attributes]].
	^ self string: resultString runs: runs