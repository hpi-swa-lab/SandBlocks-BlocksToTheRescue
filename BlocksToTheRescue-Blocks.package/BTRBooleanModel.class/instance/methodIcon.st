views
methodIcon

	^ ((FormCanvas extent: 1@1)
		fillColor: (self class defaultViewClass colorFor: self isSet);
		form) asIcon