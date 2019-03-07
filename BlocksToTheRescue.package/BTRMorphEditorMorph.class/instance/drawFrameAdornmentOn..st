as yet unclassified
drawFrameAdornmentOn: aCanvas
	| form |
	form := self class adornmentWithColor: Color seaFoam.
	aCanvas
		image: form
		at: self innerBounds topRight - (form width @ 0)
		sourceRect: form boundingBox
		rule: 34 