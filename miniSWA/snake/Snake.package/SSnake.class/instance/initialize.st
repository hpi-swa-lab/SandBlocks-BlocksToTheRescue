initialize-release
initialize

	super initialize.
	self head: SSnakeHead new.
	self segments: SRingContainer new.
	self lastSegment: self head.
	self go: self bottomDirection.