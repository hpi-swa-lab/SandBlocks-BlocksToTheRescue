accessing
startNodes

	^ self nodes select: [:each | (self incoming: each) isEmpty]