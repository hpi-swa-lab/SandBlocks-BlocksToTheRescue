animations
angleFrom: startPoint to: endPoint

	| angle difference |
	angle := (endPoint - startPoint) degrees.
	difference := angle - self morph rotationDegrees.
	difference > 180 ifTrue: [angle := angle - 360].
	difference < -180 ifTrue: [angle := angle + 360].
	^ angle roundTo: 90