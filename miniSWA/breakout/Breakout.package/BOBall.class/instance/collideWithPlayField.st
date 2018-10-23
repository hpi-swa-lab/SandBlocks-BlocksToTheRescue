entity-ops
collideWithPlayField

	((0@0 extent: 1@1) sideNearestTo: self position) caseOf: {
		[#left] -> [self rebound: #vertical].
		[#right] -> [self rebound: #vertical].
		[#top] -> [self rebound: #horizontal].
		[#bottom] ->[self rebound: #horizontal]}.