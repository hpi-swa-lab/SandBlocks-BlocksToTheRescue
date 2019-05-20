accessing
fifthCharacterWidth

	^ self font
		widthOfString: self text asString
		from: 5
		to: 5