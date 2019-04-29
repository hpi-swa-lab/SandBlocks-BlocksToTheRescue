build states
initializeStatesSet

	self states: (EStatesSet for: self grammar).
	self grammar startRulesWithIndexDo: [:rule :ruleNumber | 
		self states 
			set: 1 
			add: (EState ruleNumber: ruleNumber start: 1 next: 1)].