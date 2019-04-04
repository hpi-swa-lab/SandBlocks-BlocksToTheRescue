instance creation
godly
	^self new
		name: #godly;
		add: [:defendingObject | defendingObject removeFromWorld ] atDefenseStrengthNamed: #weak;
		add: [:defendingObject | defendingObject removeFromWorld ] atDefenseStrengthNamed: #normal;
		add: [:defendingObject | defendingObject removeFromWorld ] atDefenseStrengthNamed: #strong;
		add: [:defendingObject | defendingObject removeFromWorld ] atDefenseStrengthNamed: #godly;
		yourself
		