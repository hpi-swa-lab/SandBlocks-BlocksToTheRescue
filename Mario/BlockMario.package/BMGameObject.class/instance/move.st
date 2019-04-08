dnmphysics compatability
move
	"Moves the object by its velocity vector."
	"self halt."
	self isNPC ifTrue: [Transcript showln: self velocity].
	self relativePosition: self relativePosition + self velocity.