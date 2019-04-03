drawing
drawOn: aCanvas

	super drawOn: aCanvas.
	self image ifNotNil: [aCanvas
		translateTo: self drawingOrigin
		clippingTo: (self innerBoundsInWorld extendBy: 100)
		during: [:oCanvas | | canvasBoundingBox imageBoundingBox clippingBox transformation |
			canvasBoundingBox := self boundingBox translatedToOrigin: self origin.
			imageBoundingBox := self image boundingBox translatedToOrigin: self origin.
			transformation := (self transformationFrom: imageBoundingBox onTo: canvasBoundingBox).
			clippingBox := canvasBoundingBox extendBy: (transformation transformPoint: 1@1).
			oCanvas
				transformBy: transformation
				clippingTo: clippingBox
				during: [:tCanvas | self image isTranslucent
					ifTrue: [tCanvas translucentImage: self image at: imageBoundingBox origin + 1]
					ifFalse: [tCanvas drawImage: self image at: imageBoundingBox origin + 1]]]].