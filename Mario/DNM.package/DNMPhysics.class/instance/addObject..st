public interface
addObject: aCollidingGameElement
	"After adding anObject, others can collide with it"
	collisionObjects add: aCollidingGameElement.
	
