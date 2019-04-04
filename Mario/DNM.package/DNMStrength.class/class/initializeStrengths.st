instance creation
initializeStrengths
	 StrengthsByName := Dictionary new
		add: (#weak -> (self weak));
		add: (#normal -> (self normal));
		add: (#strong -> (self strong));
		add: (#godly -> (self godly));
		yourself.