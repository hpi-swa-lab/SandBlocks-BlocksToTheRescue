create level
createGround
	"Creates a ground populated with some enemies. Places player on first ground element. If not all types out of groundTypes have the same height, the created ground might look weird. The ground will be placed right above the lower boundary. Guarantees that the ground will be plain and that the last element added by this method will always be a ground element. The ground will have roughly the size of the width specified by the specification, it will never be shorter, but always a little longer."
	|x y lastGround groundTypes|
	groundTypes := self specification grounds.
	x:= 0.
	y:= self lowerBoundary.
	lastGround := self addOutOf: groundTypes above: (x @ y).
	self createPlayerAbove: lastGround.
	[lastGround position x < self specification width]
		whileTrue:
		[lastGround := self addOutOf: groundTypes rightOf: lastGround.
		self do: [self 
				addOutOf: (self specification enemies)
				above: lastGround] 
			withChanceOf: (self specification spawnOnFloorPercentage)].
	self addOutOf: groundTypes rightOf: lastGround.