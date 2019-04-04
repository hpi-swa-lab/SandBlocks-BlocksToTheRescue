initialization
initialize
	super initialize.	
	velocity := 0 @ 0.
	effectManager := DNMEffectManager newFor: self.