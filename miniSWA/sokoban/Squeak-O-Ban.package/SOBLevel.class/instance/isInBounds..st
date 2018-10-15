as yet unclassified
isInBounds: aPoint

	^ (aPoint x between: 1 and: self colCount) 
		and: [aPoint y between: 1 and: self rowCount] 