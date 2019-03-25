drawing
drawSimpleAdornmentOn: aCanvas

	aCanvas
		frameRectangle: self owner innerBounds
		width: (self owner valueOfProperty: #frameAdornmentWidth ifAbsent: [1])
		color: self color.
	aCanvas
		frameRectangle: (self owner innerBounds insetBy: 1)
		width: (self owner valueOfProperty: #frameAdornmentWidth ifAbsent: [1])
		color: (self color alpha: self color alpha / 3.0) 