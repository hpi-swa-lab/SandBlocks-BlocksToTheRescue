directed collision
collideFromRightWith: aBMGameObject

	self collideWith: aBMGameObject info: (BMCollisionEvent new 
															direction: #left; 
															collidee: self; 
															yourself)