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
		[#bottom] -> [self isJumping: #V2;BTRBooleanModel;4A;Constant2;UndefinedObject;5;1;nil;UndefinedObject;5;1;nil;False;7;1;false;;].
		[#top] -> [].
	}