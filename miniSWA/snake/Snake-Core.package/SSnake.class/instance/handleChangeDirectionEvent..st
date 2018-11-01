handle SEvents
handleChangeDirectionEvent: evt

	evt direction caseOf: {
		[#right] -> [self goRight].
		[#left] -> [self goLeft].
		[#up] -> [self goUp].
		[#down] -> [self goDown].
	}.