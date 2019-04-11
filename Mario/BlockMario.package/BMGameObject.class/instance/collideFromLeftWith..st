directed collision
collideFromLeftWith: aBMGameObject

	self collideWith: aBMGameObject info: (BMCollisionEvent new 
															direction: #right; 
															collidee: self; 
															yourself)