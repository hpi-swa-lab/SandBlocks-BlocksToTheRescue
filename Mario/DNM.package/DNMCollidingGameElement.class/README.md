A DNMCollidingGameElement is any part of the game which can collide and therefore implements the collision protocoll (see presentation).
In particular it implements all methods needed for the collsion protocol like takeDamage, wantsToAttack, canTraverse and so on. 
CollidingGameElements have a submorph (image) that is responsible for its actual visual representation. It can be any kind of Morph (in theory), but you can only set it via #setImage: from outside, which does only accept symbolic identifiers for ressources of the DNMImageRessourceManager. 

Instance Variables
	attackDirections:		<Array>
	attackStrength:		<DNMStrength>
	defenseStrength:		<DNMStrength>
	faction:		<DNMFaction>
	image:		<Morph>
	owningGameWorld:		<DNMGameWorld>
	physics:		<DNMPhysics>

attackDirections
	- Describes in which directions an object can attack.

attackStrength
	- Describes how strong the attack of an object is. Important for the collision protocol.

defenseStrength
	-  Describes how strong the defense of an object is. Important for the collision protocol.

faction
	- That is the faction this object is part of. It will ask its faction if it wants to attack other objects. 

physics
	- The physics this object is handled by.