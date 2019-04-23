as yet unclassified
acceptDroppingMorph: aBMGameObject event: anEvent

	self addMorph: aBMGameObject.
	self updateOffset.
	aBMGameObject relativePosition: aBMGameObject position + self offset - self position.
	self addGameObject: aBMGameObject.