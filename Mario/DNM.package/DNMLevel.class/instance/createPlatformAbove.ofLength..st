create level
createPlatformAbove: aPosition ofLength: numberOfPlatformElements
	"Creates a platform above this position, guarantees, that the last element added will always be a platform element."
	|last platformType|
	platformType := (self specification platforms) atRandom.
	last := self add: platformType above: aPosition.
	last := self levelElements last.
	(numberOfPlatformElements-1) timesRepeat:
		[self 
			do: [self addAboveOutOf: (self specification spawnedOnPlatform)]
			withChanceOf: self specification spawnOnPlatformPercentage.
		last := self add: platformType rightOf: last].