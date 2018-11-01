accessing
extentFor: sizeOption

	^ sizeOption caseOf: {
			[#fullScreen] -> [self fullScreenExtent].
			[#windowed] -> [self windowedExtent]}
		otherwise: [sizeOption]