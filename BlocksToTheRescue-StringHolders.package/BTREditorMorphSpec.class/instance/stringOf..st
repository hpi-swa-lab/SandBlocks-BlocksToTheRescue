comparing
stringOf: anAdapter

	^ anAdapter isBlock 
		ifTrue: [anAdapter sourceString]
		ifFalse: [anAdapter asString]