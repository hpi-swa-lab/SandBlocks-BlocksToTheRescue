event handling
mouseDown: evt

	evt hand grabMorph: self morph.
	self morph center: evt hand center.
	self morph: nil.
	self removeAllMorphs.