build utilities
iconButtonFor: aForm

	^ aForm asMorph asRescalingImageMorph
		borderWidth: 1;
		borderColor: self borderColor;
		origin: #center;
		scaleMode: #contain;
		yourself