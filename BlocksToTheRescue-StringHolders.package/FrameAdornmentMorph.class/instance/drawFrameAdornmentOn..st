drawing
drawFrameAdornmentOn: aCanvas

	self class simpleFrameAdornments
		ifFalse: [self drawTriangularAdornmentOn: aCanvas]
		ifTrue: [self drawSimpleAdornmentOn: aCanvas].