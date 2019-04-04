create level
createLevelDestination
	"The destination will be added right of the last existing level element. Therefore, levelElements is not allowed to be empty when calling this method. Adds some ground blocks as a target zone in front of the target."
	|destinationLength|
	destinationLength := 5.
	destinationLength timesRepeat: [self addRightOutOf: (self specification grounds)].
	self addAboveOutOf: {#target}.
	self addAbove: #diamond. "for aesthetic reasons only"


