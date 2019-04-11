collision
collideWithPlatform: aBMPlatform info: aBMCollisionEvent

	Transcript showln: aBMCollisionEvent direction.
	aBMCollisionEvent direction caseOf: {
		[#left] -> [ | y | 
						self velocity y > 0
							ifTrue: [y:= self velocity y * 0.5]
							ifFalse: [y := self velocity y].
						self velocity setY: y].
		[#right] -> [ | y | 
						self velocity y > 0
							ifTrue: [y:= self velocity y * 0.5]
							ifFalse: [y := self velocity y].
						self velocity setY: y].
		[#bottom] -> [self isJumping: false].
		[#top] -> [].
	}