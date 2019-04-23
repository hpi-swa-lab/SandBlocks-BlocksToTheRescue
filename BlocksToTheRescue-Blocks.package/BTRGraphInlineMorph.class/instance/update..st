as yet unclassified
update: anObject

	anObject = self graph ifTrue: [
		self initializeLayers.
		self changed].