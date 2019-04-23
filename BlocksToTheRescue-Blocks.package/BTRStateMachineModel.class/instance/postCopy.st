as yet unclassified
postCopy

	self states:
		(self states copy collect: [:state |
			state model: self]).
	
	^ super postCopy