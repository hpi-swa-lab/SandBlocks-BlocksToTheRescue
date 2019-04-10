directed collision
collideFromRight: aBMGameObject

	aBMGameObject collideWith: self info: (BMCollisionEvent new 
															direction: #right; 
															collidee: self; 
															yourself)