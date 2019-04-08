accessing
methodClass

	^ self btrProperties at: #methodClass ifAbsent: [UndefinedObject]