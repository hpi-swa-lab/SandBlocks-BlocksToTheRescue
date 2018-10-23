instance creation
fromString: aString

	| level height width |
	height := aString lineCount.
	width :=(aString lines at: 1) size.
	level := self rows: height cols: width.
	level information: SOBLevelInformation new.
	aString lines withIndexDo: 
		[:line :y | line withIndexDo: 
			[:character :x | | tile occupant |
				tile := SOBTile from: character.
				level atCol: x atRow: y put: tile.
				occupant := SOBOccupant from: character.
				level occupy: x @ y by: occupant.
				occupant moveTo: x @ y.
				occupant isPlayer ifTrue: [level player: occupant].
				occupant isBox ifTrue: [level unstoreBox].]].
	^ level