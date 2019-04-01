accessing
endNodes

	^ self nodes select: [:each | (self outgoing: each) isEmpty]