instance-creation
scoreBoostBy: anAmount
	^DNMAttributeBoostEffect new
		symbolicName: #scoreBoost;
		attribute: #score;
		amount: anAmount;
		yourself