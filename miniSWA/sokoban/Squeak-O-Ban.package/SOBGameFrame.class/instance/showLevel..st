level selection
showLevel: aLevel

	self levelMorph ifNotNil: [:level | level abandon].
	self levelMorph: aLevel asMorph.
	self informationMorph setInformation: aLevel information.
	self levelWrapper addMorph: self levelMorph.
	self levelWrapper shrinkWrap.
	self adaptOverlay.