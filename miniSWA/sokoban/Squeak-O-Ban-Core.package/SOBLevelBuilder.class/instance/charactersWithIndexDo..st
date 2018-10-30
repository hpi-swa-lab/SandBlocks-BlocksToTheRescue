enumerating
charactersWithIndexDo: aBlock

	self string lines withIndexDo: 
		[:line :y | line withIndexDo: 
			[:character :x | aBlock value: character value: x value: y]].