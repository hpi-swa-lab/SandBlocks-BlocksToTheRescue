instance creation
strong
	^self new
		name: #strong;
		add: [:defendingObject | defendingObject removeFromWorld ] atDefenseStrengthNamed: #weak;
		add: [:defendingObject | defendingObject removeFromWorld ] atDefenseStrengthNamed: #normal;
		add: [:defendingObject | defendingObject takeDamage ] atDefenseStrengthNamed: #strong;
		yourself
		