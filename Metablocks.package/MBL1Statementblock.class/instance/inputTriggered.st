as yet unclassified
inputTriggered

	(self flowInputs select: [:each | each poll]) 
		ifNotEmpty: [self execute]