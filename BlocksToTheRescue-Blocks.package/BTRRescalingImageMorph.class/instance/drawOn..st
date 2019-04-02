drawing
drawOn: aCanvas

	super drawOn: aCanvas.
	
	self image ifNotNil: [aCanvas
		translateTo: self drawingOrigin
		clippingTo: self innerBoundsInWorld
		during: [:oCanvas | | canvasBoundingBox imageBoundingBox |
			canvasBoundingBox := self boundingBox translatedToOrigin: self origin.
			imageBoundingBox := self image boundingBox translatedToOrigin: self origin.
			oCanvas
				transformBy: (self transformationFrom: imageBoundingBox onTo: canvasBoundingBox)
				clippingTo: canvasBoundingBox
				during: [:tCanvas | self image isTranslucent
					ifTrue: [tCanvas translucentImage: self image at: imageBoundingBox origin]
					ifFalse: [tCanvas drawImage: self image at: imageBoundingBox origin]]]].