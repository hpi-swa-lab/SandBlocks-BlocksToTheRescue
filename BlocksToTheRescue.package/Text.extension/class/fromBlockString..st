*BlocksToTheRescue
fromBlockString: aString
	"Answer an instance of me whose characters are those of the argument, aString."
	| stream resultString attributes |
	(aString includesAllOf:{Character value: 1 . Character value: 2})
		ifFalse: [^ self string: aString attributes:  #()].
		
	stream := ReadStream on: aString.
	resultString := ''.
	attributes := RunArray new.
	[stream atEnd]
		whileFalse: [ | string |
			string :=  stream upTo: (Character value: 1).
			resultString := resultString, string.
			attributes addLast: #() times: string size.
			(stream last = (Character value: 1))
				ifTrue: [
					string :=  stream upTo: (Character value: 2).
					resultString := resultString, (String value: 1).
					attributes addLast: {BTRBlockAttribute scanFrom: (ReadStream on: string)}]].
	^ self string: resultString runs: attributes