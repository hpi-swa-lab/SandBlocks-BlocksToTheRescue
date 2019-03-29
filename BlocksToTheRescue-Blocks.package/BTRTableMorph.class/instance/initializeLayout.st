initialization
initializeLayout

	self	layoutPolicy: TableLayout new.
	self layoutInset: self inset.
	self	listDirection: #rightToLeft.

	 self wrapCentering: #topLeft. 
	 self wrapDirection: #bottomToTop.