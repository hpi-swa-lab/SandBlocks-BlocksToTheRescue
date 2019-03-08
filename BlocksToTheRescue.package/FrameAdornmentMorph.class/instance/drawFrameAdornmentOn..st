as yet unclassified
drawFrameAdornmentOn: aCanvas
	| form |
	form := self class adornmentWithColor: self color.
	aCanvas
		image: form
		at: self owner innerBounds topRight - (form width @ 0)
		sourceRect: form boundingBox
		rule: 34 