as yet unclassified
adjustInlineBlock

	(self inlineMorph isNil not and: [self paragraph lines isEmpty not])
		ifTrue: [ |line|
			line := self paragraph lines first.
			self inlineMorph topLeft: line left @ line bottom].