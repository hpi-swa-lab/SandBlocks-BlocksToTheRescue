accessing
at: aPoint put: aTile

	^ self 
		atCol: aPoint x 
		atRow: aPoint y 
		put: aTile