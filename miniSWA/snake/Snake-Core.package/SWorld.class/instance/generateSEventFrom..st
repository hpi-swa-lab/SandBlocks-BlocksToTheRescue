events-processing
generateSEventFrom: evt

	^ evt keyCharacter caseOf: {
		[Character arrowRight] -> [SChangeDirectionEvent new direction: #right].
		[Character arrowLeft] -> [SChangeDirectionEvent new direction: #left].
		[Character arrowUp] -> [SChangeDirectionEvent new direction: #up].
		[Character arrowDown] -> [SChangeDirectionEvent new direction: #down]
	}.