*BlocksToTheRescue-Core
limitedTo: aNumber
	"Returns the first max(n, size) elements defined by do-order."

	| index |
	index := 0.
	^ self select: [:each | (index := index + 1) <= aNumber]