*BlocksToTheRescue-Core
insertAndSelectText: aText at: anInteger

	self closeTypeIn.
	
	self selectInvisiblyFrom: anInteger to: anInteger - 1.
	self openTypeIn.

	self
		replace: self selectionInterval
		with: aText
		and: [].

	self closeTypeIn.