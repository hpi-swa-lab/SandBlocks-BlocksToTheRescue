instance creation
on: anObject getValue: getSel setValue: setSel min: min max: max quantum: quantum
	
	"Answer a new instance of the receiver with the given selectors as the interface."
	
	^ self new
		on: anObject
		getValue: getSel
		setValue: setSel
		min: min
		max: max
		quantum: quantum