testing
isGameOver
	^self isMarioDead and: [self gameStatus = #running]