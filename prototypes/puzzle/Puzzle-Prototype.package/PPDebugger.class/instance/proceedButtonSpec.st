as yet unclassified
proceedButtonSpec

	^ Dictionary withAll: {
		#frame->(LayoutFrame fractions: (0.5 @ 0 corner: 1 @ 0.33)).
		#label->'Proceed'.
		#action->#proceedDebugging
	}