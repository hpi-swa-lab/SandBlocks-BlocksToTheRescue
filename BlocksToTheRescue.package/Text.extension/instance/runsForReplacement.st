*BlocksToTheRescue
runsForReplacement

	^ self runs collect: [:attributes | 
		attributes collect: [:attribute |
			attribute wantsCopyOnInsert 
				ifTrue: [attribute copy]
				ifFalse: [attribute]]]