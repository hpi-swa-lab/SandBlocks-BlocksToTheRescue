as yet unclassified
stepButtonSpec

	^ Dictionary withAll: {
		#frame->(LayoutFrame fractions: (0 @ 0 corner: 0.5 @ 1)).
		#label->'Step over'.
		#action->#stepOver
	}