as yet unclassified
restartButtonSpec

	^ Dictionary withAll: {
		#frame->(LayoutFrame fractions: (0.5 @ 0.33 corner: 1 @ 0.66)).
		#label->'Restart'.
		#action->#restartDebugging
	}