as yet unclassified
restartButtonSpec

	^ Dictionary withAll: {
		#frame->(LayoutFrame fractions: (0.5 @ 0 corner: 1 @ 0.5)).
		#label->'Restart'.
		#action->#restartDebugging
	}