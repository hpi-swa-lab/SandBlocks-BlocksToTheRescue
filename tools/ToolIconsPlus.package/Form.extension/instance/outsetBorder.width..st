*ToolIconsPlus
outsetBorder: aColor width: borderWidth
	| newForm |
	newForm := Form extent: self extent + (borderWidth*2) depth: self depth.
	newForm fillColor: Color transparent.
	self displayOn: newForm at: (0@0) + borderWidth.
	newForm borderWidth: borderWidth color: aColor.
	^ newForm