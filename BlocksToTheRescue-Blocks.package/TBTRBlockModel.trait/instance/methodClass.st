accessing
methodClass

	^ self properties at: #methodClass ifAbsent: [UndefinedObject]