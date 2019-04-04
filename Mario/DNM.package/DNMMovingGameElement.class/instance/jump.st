control
jump
	"you can only jump if standing on something"
	(physics isStandingOnSomething: self) ifTrue: [self moveUp].