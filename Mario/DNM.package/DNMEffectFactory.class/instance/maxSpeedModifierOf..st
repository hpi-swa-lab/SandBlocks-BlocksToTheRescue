instance-creation
maxSpeedModifierOf: aFactor
	^DNMAttributeModifierEffect new
		symbolicName: #maxSpeedModifier;
		attribute: #maxSpeed;
		factor: aFactor;
		yourself
	