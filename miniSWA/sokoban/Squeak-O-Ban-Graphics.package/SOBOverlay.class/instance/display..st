displaying
display: anObject

	self visible: true.
	self message contents: anObject asString.
	self message center: self center.