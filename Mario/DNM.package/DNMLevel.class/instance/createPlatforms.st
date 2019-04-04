create level
createPlatforms
	"Randomly distributes platforms. No two platforms will overlap each other in x direction. The distance between two adjacent platforms is specified by the specifications platformDistance. The platforms will be placed such that their y position allows the player to walk between the lowest possible platform and the ground. The last platform might exceed the width specified by the specification (its interpreted more as a recommendation than a restriction). "
	|x y length maxY minY maxGroundHeight groundHeights|
	groundHeights := self specification grounds collect: [:groundType |
		 (self boundsOf: groundType) height].
	maxGroundHeight := groundHeights max.
	x:= 0.
	maxY := self lowerBoundary - ((self boundsOf: #mario) height) - (maxGroundHeight).
	minY := (maxY*3/4) asInteger.
	[x < (self specification width)] 
		whileTrue: 
			[length := (self specification maxPlatformLength) atRandom.
			y := minY + ((maxY-minY) atRandom).
			self createPlatformAbove: (x @ y) ofLength: length.
			x := (self levelElements last right) + (self specification platformDistance)].



