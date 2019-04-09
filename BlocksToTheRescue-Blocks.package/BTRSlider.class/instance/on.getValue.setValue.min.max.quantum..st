initialization
on: aNumberModel getValue: getSel setValue: setSel min: min max: max quantum: q

	quantum := q.
	minimumValue := min.
	maximumValue := max.
	self 
		on: aNumberModel
		getValue: getSel
		setValue: setSel.