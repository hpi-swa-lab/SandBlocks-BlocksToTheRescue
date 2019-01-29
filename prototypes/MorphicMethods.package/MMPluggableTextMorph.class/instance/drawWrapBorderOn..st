as yet unclassified
drawWrapBorderOn: aCanvas

	self mode ~= #showTool
		ifTrue: [super drawWrapBorderOn: aCanvas].