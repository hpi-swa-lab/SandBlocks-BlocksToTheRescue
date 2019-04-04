initialization
setImage: anImageSymbol
	"Call this message to set the image using a symbolic identifier for the image."
	image ifNotNil: [image delete].
	image := DNMImageRessourceManager singleton getRessource: anImageSymbol.
	self fitToImage.