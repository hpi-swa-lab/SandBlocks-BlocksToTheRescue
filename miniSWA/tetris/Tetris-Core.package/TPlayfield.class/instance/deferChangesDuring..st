updating
deferChangesDuring: aBlock
	"For optimization; allows to do work that would update often and only make it update once."
	self allowChanges: false.
	aBlock
		ensure: [self allowChanges: true. 
				self changed]