as yet unclassified
testRemoveOutOfBoundsParticles
	
	"gameWorld sIParticles: ({ SIParticle new position: ( -6 @ -31) .  SIParticle new position: (gameWorld left + (gameWorld right - gameWorld left/2)) @ (gameWorld top + (gameWorld bottom - gameWorld top/2)) .  SIParticle new position: (gameWorld right + 31) @ (gameWorld bottom + 6)} asOrderedCollection).

	gameWorld removeOutOfBoundsParticles.
	
	self assert: (gameWorld sIParticles size) equals: 1."