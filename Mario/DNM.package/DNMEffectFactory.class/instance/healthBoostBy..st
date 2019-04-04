instance-creation
healthBoostBy: anAmount
	^DNMAttributeBoostEffect new
		symbolicName: #healthBoost;
		attribute: #health;
		amount: anAmount;
		yourself