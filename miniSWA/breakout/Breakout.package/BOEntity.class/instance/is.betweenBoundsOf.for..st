utils
is: aPoint betweenBoundsOf: aRectangle for: anAxis
	| coordinate |
	coordinate := self coordinateFrom: aPoint on: anAxis.
	
	^ anAxis caseOf: {
		[#x] -> [(aRectangle left < coordinate) and: [coordinate < aRectangle right]].
		[#y] -> [(aRectangle top < coordinate) and: [coordinate < aRectangle bottom]]}