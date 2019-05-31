as yet unclassified
asMorph

	^ self inlineView
		in: [:view | view attachBlockModel: self];
		yourself