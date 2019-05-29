utils
iconButtonFor: aForm

	^ aForm asMorph asRescalingImageMorph
		origin: #center;
		scaleMode: #contain;
		yourself