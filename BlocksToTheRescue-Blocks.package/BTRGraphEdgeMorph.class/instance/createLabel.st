as yet unclassified
createLabel

	^ (AcceptingStringMorph contents: self edge valueName)
		acceptAction: [:value | self edge valueName: value];
		color: Color white;
		yourself