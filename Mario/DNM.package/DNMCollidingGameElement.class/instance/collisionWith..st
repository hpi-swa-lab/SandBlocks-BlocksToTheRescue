collision attack protocoll
collisionWith: aGameElement
	"called by physics to inform this object that it collided."
	(self wantsToAttack: aGameElement) ifTrue: [self attack: aGameElement].
	