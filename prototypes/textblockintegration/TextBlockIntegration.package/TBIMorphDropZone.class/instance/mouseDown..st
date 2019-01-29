event handling
mouseDown: evt

	self morph ifNil: [^ self].
	evt hand grabMorph: self morph.
	self morph center: evt hand center.
	self morph: nil.
	self removeAllMorphs.