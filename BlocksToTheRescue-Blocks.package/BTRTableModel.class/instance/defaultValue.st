accessing
defaultValue

	^ Matrix 
		rows: self defaultNrows 
		columns: self defaultNcolumns
		contents: self defaultContents