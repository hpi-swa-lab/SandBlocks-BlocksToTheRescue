coloring
colorsMixedUpTo: depth

	^ (depth = 1)
		ifTrue: [self inmostBracketColor asOrderedCollection]
		ifFalse: [
			(0 to: depth-1) collect: [ :i |
				self inmostBracketColor
					mixed: i / (depth-1)
					with: self utmostBracketColor]]