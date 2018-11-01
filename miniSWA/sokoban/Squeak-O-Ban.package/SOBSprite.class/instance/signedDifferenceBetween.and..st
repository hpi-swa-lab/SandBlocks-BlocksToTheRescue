updating
signedDifferenceBetween: a and: b

	| d r sign |
	d := (a - b) abs \\ 360. 
	r := d > 180 ifTrue: [360 - d] ifFalse: [d].
	sign := ((a - b >= 0 and: [a - b <= 180]) or: [a - b <= -180 and: [a - b >= -360]] )
		ifTrue: [1] ifFalse: [-1].	
	^ r * sign.