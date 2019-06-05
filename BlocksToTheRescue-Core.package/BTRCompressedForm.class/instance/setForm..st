accessing
setForm: aForm

	| imageStream |
	imageStream := WriteStream on: ByteArray new.
	(PNGReadWriter on: imageStream)
		nextPutImage: aForm;
		close.
	self bytes: imageStream contents.