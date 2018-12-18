as yet unclassified
relativeGridCellPositions
	
	^ self sum: self calculatedRowSize andDo: [:col1 :sum1 | 
		col1 add: (self sum: self calculatedColumnSize andDo: [:col2 :sum2 | 
			col2 add: sum2@sum1])].