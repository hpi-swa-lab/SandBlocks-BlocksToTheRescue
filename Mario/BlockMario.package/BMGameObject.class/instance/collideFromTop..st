directed collision
collideFromTop: aBMGameObject

	aBMGameObject collideWith: self info: (BMCollisionEvent new 
															direction: #top; 
															collidee: self; 
															yourself)