accessing
scaleMode: aSymbol

	(#(
		fill "fill in entire content box, stretch or squish to fit"
		cover "preserve aspect ratio, fill in entire content box, clipped to fit"
		contain "preserve aspect ration, fit in content box, scaled down"
		none "no resize, clipped to fit"
	) includes: aSymbol)
		ifFalse: [self error: 'invalid scale mode "', aSymbol, '"'].
	scaleMode := aSymbol.
	self changed.