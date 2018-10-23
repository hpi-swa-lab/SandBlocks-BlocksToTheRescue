as yet unclassified
addSegment 

	self segments add: (SSegment new 
		position: self head position;
		yourself).
	