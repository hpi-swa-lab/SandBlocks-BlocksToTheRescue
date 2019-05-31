converting
asForm

	| reader image |
	reader := (PNGReadWriter on: (ReadStream on: self bytes)).
	image := reader nextImage.
	reader close.
	
	^ image
	