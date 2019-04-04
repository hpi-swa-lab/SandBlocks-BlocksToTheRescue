initialization
fitToImage
	"guarantees that image bounds = self bounds and adds image as a submorph"
	image ifNotNil: 
			[self 
				width: image width;
				height: image height;
				addMorph: image. 
			image position: self position].