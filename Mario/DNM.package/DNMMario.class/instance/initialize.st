initialization
initialize
	super initialize.	
	self 
		changeToState: #marioState;
		factionNamed: #playerFaction;
		defenseStrengthNamed: #normal;
		applyEffect: DNMEffectFactory singleton catAbility.
	score := ValueHolder new contents: 0.
	health := ValueHolder new contents: 1.
	