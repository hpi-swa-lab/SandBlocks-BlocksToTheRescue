as yet unclassified
abandonButtonSpec

	^ Dictionary withAll: {
		#frame->(LayoutFrame fractions: (0.5 @ 0.5 corner: 1 @ 1)).
		#label->'Abandon'.
		#action->#abandonDebugging
	}