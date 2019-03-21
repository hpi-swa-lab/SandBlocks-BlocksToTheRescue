*ToolIconsPlus
isPixelsEqualTo: aForm

	^ aForm isForm
		and: [self extent = aForm extent]
		and: [ | selfPeeker otherPeeker |
			selfPeeker := BitBlt bitPeekerFromForm: self.
			otherPeeker := BitBlt bitPeekerFromForm: aForm.
			self boundingBox columnsAndRowsDo: [ :x :y |
				(selfPeeker pixelAt: x@y) = (otherPeeker pixelAt: x@y)
					ifFalse: [^ false]].
			true]