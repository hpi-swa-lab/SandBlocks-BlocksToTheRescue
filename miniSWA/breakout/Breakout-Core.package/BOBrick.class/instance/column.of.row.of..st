accessing
column: colInt of: colMaxInt row: rowInt of: rowMaxInt

	self initializePointsFor: rowMaxInt - rowInt.
	self position: (((colInt-1)/colMaxInt)@((rowInt-1)*self extent y)) + (self extent/2).