*BlocksToTheRescue-Core
asRescalingImageMorph

	^ (BTRRescalingImageMorph
		withForm: self image)
		borderStyle: self borderStyle;
		yourself