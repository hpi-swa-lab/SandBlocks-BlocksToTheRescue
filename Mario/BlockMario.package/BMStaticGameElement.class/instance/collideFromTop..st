as yet unclassified
collideFromTop: aBMGameObject

	self collideWith: aBMGameObject.
	aBMGameObject velocity: (aBMGameObject velocity x * 0.8) @ (aBMGameObject deltaTo: self) y