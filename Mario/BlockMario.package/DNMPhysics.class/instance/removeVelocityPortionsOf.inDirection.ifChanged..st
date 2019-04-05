collision
removeVelocityPortionsOf: aVelocity inDirection: aNormalizedAxisParallelDirectionVector ifChanged: aBlock
	"Removes portions of aVelocity in the given direction. If it had such portions, aBlock will be evaluated."
	(aNormalizedAxisParallelDirectionVector x sign = aVelocity x sign)
		ifTrue: [aVelocity setX: 0 setY: (aVelocity y). aBlock value].
	(aNormalizedAxisParallelDirectionVector y sign = aVelocity y sign)
		ifTrue: [aVelocity setX: (aVelocity x) setY: 0. aBlock value].