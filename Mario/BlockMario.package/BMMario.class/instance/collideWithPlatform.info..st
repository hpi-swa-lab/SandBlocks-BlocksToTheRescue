collision
collideWithPlatform: aBMPlatform info: aBMCollisionEvent

	aBMCollisionEvent direction caseOf: {
		[#left] -> [ | y | 
						self velocity y > 0
							ifTrue: [y:= self velocity y * 0.5]
							ifFalse: [y := self velocity y].
						self velocity: self velocity x @ y].
		[#right] -> [ | y | 
						self velocity y > 0
							ifTrue: [y:= self velocity y * 0.5]
							ifFalse: [y := self velocity y].
						self velocity: self velocity x @ y].
		[#bottom] -> [self isJumping: #V2;BTRBooleanModel;3D;Constant2;Dictionary;14;1;((Dictionary new));False;7;1;false;;].
		[#top] -> [].
	}