testing
mayActOnClick

	^ (self anchoredMorph respondsTo: #mayActOnClick)
		ifTrue: [self anchoredMorph mayActOnClick]
		ifFalse: [false]