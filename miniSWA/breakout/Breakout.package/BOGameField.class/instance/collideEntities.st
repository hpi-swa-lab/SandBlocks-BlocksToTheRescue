stepping and presenter
collideEntities

	"replace by crossProduct/triangle collection thingy"
	self allCollidingEntities do: [:entity1 | entity1
		testCollisionsWith: (self allCollidingEntities
			reject: [:entity2 | entity1 == entity2])].