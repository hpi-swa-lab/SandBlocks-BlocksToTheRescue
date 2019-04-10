accessing
index

	^ self readOnlyCollection 
		indexOf: self value
		ifAbsent: [0] 