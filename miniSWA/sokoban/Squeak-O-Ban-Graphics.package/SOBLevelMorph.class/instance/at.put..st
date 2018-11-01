accessing
at: aPoint put: aSprite

	aSprite 
		tileSize: self tileSize;
		setPosition: aPoint.
	aSprite addTo: self.