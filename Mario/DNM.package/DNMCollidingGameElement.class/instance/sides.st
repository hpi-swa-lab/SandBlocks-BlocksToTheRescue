collision
sides
	"Returns its sides as LineSegments."
	^{
		LineSegment from: self topLeft to: self topRight . 
		LineSegment from: self topRight to: self bottomRight . 
		LineSegment from: self bottomRight to: self bottomLeft . 
		LineSegment from: self bottomLeft to: self topLeft
	 }
	