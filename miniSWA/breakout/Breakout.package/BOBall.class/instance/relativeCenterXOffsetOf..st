collision
relativeCenterXOffsetOf: aBOPaddle

	^ (self position x - aBOPaddle position x)
	 	/ ((aBOPaddle extent x + self extent x)/2)