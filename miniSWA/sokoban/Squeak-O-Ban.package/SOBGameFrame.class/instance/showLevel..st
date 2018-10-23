as yet unclassified
showLevel: aLevel

	self levelMorph ifNotNil: [:level | level abandon].
	self levelMorph: aLevel asMorph.
	self informationMorph setInformation: aLevel information.
	self levelMorph 
		setProperty: #morphicLayerNumber toValue: 10;
		position: 0@0.
	self levelWrapper addMorph: self levelMorph.
	self levelWrapper shrinkWrap.
	self adaptOverlay.