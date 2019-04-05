dnmphysics compatability
checkVelocityLimits
	"Setting velocity to the maximum but keeping it signed (+/-). If the velocity is too small it gets set to zero."
	
	|maxVelocity minimumVelocity|
	minimumVelocity := 0.5.
	maxVelocity := self maxSpeed.
	(maxVelocity x < 0) ifTrue: [maxVelocity := (0 @ (maxVelocity y))].
	(maxVelocity y < 0) ifTrue: [maxVelocity := ((maxVelocity x ) @ 0)].
	(velocity x abs > maxVelocity x)
		ifTrue: [velocity := (((maxVelocity x) * (velocity x sign)) @ (velocity y))].
	(velocity y abs > maxVelocity y)
		ifTrue: [velocity := ((velocity x) @ ((maxVelocity y)* (velocity y sign)))].
	(velocity r < minimumVelocity) ifTrue: [velocity := 0@0].