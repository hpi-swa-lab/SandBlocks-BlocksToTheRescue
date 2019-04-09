as yet unclassified
collideFromLeft: aBMGameObject

	self collideWith: aBMGameObject.
	aBMGameObject velocity: (aBMGameObject deltaTo: self) x @ (aBMGameObject velocity y * 0.5)