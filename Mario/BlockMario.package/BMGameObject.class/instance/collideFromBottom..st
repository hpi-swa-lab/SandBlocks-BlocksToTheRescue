directed collision
collideFromBottom: aBMGameObject

	aBMGameObject collideWith: self info: (BMCollisionEvent new 
															direction: #bottom; 
															collidee: self; 
															yourself)