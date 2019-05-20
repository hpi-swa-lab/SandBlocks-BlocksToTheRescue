movement
initJump

	self isJumping
		ifFalse: [
			self isJumping: #V2;BTRBooleanModel;3B;Constant2;Dictionary;14;1;((Dictionary new));True;6;1;true;;.
			self acceleration: self minAcceleration.
			self jump]
	