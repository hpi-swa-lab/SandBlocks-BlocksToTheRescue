as yet unclassified
index

	^ self readOnlyCollection 
		indexOf: self value
		ifAbsent: [0] 