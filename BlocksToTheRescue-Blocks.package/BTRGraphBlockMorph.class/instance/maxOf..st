as yet unclassified
maxOf: aCollection

	^ aCollection 
		ifEmpty: [0]
		ifNotEmpty: [aCollection max]