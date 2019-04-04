instance-creation
maxSpeedModifierOf: aFactor for: aDuration
	^(self maxSpeedModifierOf: aFactor)
		duration: aDuration;
		yourself
	