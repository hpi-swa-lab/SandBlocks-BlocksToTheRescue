*IconsForMessages
brokenMorphIcon

	^ (Morph new
		extent: 12@12;
		setProperty: #errorOnDraw toValue: true;
		yourself) imageForm