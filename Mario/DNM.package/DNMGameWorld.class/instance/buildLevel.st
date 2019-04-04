initialization
buildLevel
	self level levelElements do: [:aLevelElement | 
		self createGameElementFrom: aLevelElement].