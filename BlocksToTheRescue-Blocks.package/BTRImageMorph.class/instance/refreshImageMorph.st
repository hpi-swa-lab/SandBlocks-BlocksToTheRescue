event handling
refreshImageMorph

	self image
		ifNil: [self imageMorph hide]
		ifNotNil: [self imageMorph
			show;
			image: (self image scaledToSize: self innerBounds extent);
			center: self center].