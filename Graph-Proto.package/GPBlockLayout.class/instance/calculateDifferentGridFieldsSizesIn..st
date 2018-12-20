as yet unclassified
calculateDifferentGridFieldsSizesIn: aRectangle

	| differentGridFieldsSizes absolutePositions gridCellSizes |
	differentGridFieldsSizes := Dictionary new.
	absolutePositions := Dictionary new.
	gridCellSizes := OrderedCollection new.
	self differentGridFields do: [:each | differentGridFieldsSizes at: each put: nil].
	
	self grid withIndexDo: [:each :index |
		each withIndexDo: [:label :innerIndex | | currentFieldMinMax newFieldMinMax | 
			currentFieldMinMax := (differentGridFieldsSizes at: label).
			newFieldMinMax := currentFieldMinMax 
										ifNil: [{innerIndex@index . innerIndex@index}] 
										ifNotNil: [{currentFieldMinMax first min: innerIndex@index.
					   						         currentFieldMinMax second max: innerIndex@index}].
			differentGridFieldsSizes 
				at: label 
				put: newFieldMinMax]].
	self test: 
	(differentGridFieldsSizes collect: [:each | | sum width height |
		sum := 0.
		each first x to: each second x do: [:index | sum := sum + self calculatedColumnSize at: index].
		width := sum.
		sum := 0.
		each first y to: each second y do: [:index | sum := sum + self calculatedRowSize at: index].
		height := sum.
		width @ height]).
	
	self differentGridFields do: [:each | | topLeft x y |
		topLeft := (differentGridFieldsSizes at: each) first.
		x := (topLeft x = 1
			ifTrue: [aRectangle left]
			ifFalse: [(absolutePositions at: (self gridAt: ((topLeft x - 1) @ topLeft y))) right]).
		y := (topLeft y = 1
			ifTrue: [aRectangle top]
			ifFalse: [(absolutePositions at: (self gridAt: (topLeft x @ (topLeft y - 1)))) bottom]).
		absolutePositions at: each put: ((x@y) truncated corner: ((x@y + (self test at: each) roundUpTo: 1)))].
	
	self test: self relativeGridCellPositions.
	^ absolutePositions
			
		