as yet unclassified
collideFromBottom: aBMGameObject

	self collideWith: aBMGameObject.
	aBMGameObject velocity: aBMGameObject velocity x @ (aBMGameObject deltaTo: self) y