as yet unclassified
getUniqueFields

	^ self grid
		inject: OrderedCollection new
		into: [:acc :next | next
				inject: acc
				into: [:innerAcc :innerNext | (innerAcc includes: innerNext)
						ifTrue: [innerAcc]
						ifFalse: [innerAcc add: innerNext.
							innerAcc]]]