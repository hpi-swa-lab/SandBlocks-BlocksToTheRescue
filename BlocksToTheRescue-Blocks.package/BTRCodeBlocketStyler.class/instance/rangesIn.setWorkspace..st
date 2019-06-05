as yet unclassified
rangesIn: aText setWorkspace: aBoolean

	| result |
	result := super rangesIn: aText setWorkspace: aBoolean.
	(result 
		select: [:each | each type = #undefinedIdentifier])
		select: [:each | self isOutsideVariable: (text string copyFrom: each start to: each end)] 
		thenDo: [:each | each type: self outsideVariable].
	^ result