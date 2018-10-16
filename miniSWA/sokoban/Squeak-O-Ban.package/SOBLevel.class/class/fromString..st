instance creation
fromString: aString

	| level height width |
	height := aString lineCount.
	width :=(aString lines at: 1) size.
	level := self rows: height cols: width.
	aString lines withIndexDo: 
		[:line :y | line withIndexDo: 
			[:character :x | | occupant |
				level atCol: x atRow: y put: (SOBTile from: character).
				occupant := (SOBOccupant from: character).
				level occupy: x @ y by: occupant.
				occupant position: x @ y.
				occupant isPlayer ifTrue: [level player: occupant]]].
	^ level