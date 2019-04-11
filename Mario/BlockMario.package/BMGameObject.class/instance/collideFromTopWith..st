directed collision
collideFromTopWith: aBMGameObject

	self collideWith: aBMGameObject info: (BMCollisionEvent new 
															direction: #bottom; 
															collidee: self; 
															yourself)