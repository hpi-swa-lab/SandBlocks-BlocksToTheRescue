accessing
name: aString

	| center |
	center := self center.
	
	super name:  'State: ', aString.
	self nameMorph contents: aString.
	
	self extent: self nameMorph extent + (16@8).
	self center: center.
	self nameMorph center: self center.