instance creation
normal
	^self new
		name: #normal;
		add: [:defendingObject | defendingObject removeFromWorld ] atDefenseStrengthNamed: #weak;
		add: [:defendingObject | defendingObject takeDamage. ] atDefenseStrengthNamed: #normal;
		yourself
		