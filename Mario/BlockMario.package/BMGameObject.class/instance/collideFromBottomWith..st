directed collision
collideFromBottomWith: aBMGameObject

	self collideWith: aBMGameObject info: (BMCollisionEvent new 
															direction: #top; 
															collidee: self; 
															yourself)