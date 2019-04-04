collision attack protocoll
wantsToAttack: aGameElement
	^(self faction isHostileTowards: (aGameElement faction)) and: [self isInAttackDirection: aGameElement]
