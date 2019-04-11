directed collision
collideFromLeft: aBMGameObject

	aBMGameObject collideWith: self info: (BMCollisionEvent new 
															direction: #left; 
															collidee: self; 
															yourself)