A DNMPhysics is the keeper of the collison. After the call of #updateMovingObjects by the game world it tries to set all of them according to their velocity to a new place. If a game Element can not move its whole distance that will be recognized by the physics and the game element will just move as far that it will be plan to the object it would collide with.
It will only move objects and consider objects for the movement that have been added.

Instance Variables
	collisionObjects:		<OrderedCollection>
	gameWorld:		<DNMGameWorld>
	movingObjects:		<OrderedCollection>

collisionObjects
	- A Collection of all objects by which there could appear a collision.

gameWorld
	- That is the game world the physics instance is repsonsible for.

movingObjects
	- A colletion of all objects which move.