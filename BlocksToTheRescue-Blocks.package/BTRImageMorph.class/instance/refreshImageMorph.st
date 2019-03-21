event handling
refreshImageMorph

	self image
		ifNil: [self imageMorph hide]
		ifNotNil: [self imageMorph
			show;
			newForm: (self image scaledToSize: self innerBounds extent);
			center: self center].