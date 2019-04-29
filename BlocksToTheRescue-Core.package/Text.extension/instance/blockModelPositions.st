*BlocksToTheRescue-Core
blockModelPositions

	| positions |
	positions := OrderedCollection new.
	self runs doWithIndex: [:each :index |
		(each contains: #hasBTRBlockModel) ifTrue: [positions add: index]].
	
	^ positions