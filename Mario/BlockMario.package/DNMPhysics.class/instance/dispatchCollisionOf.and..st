collision
dispatchCollisionOf: collidee and: collider
	"Sends the collisionWith: method to both objects"
	collidee collisionWith: collider.
	collider collisionWith: collidee.