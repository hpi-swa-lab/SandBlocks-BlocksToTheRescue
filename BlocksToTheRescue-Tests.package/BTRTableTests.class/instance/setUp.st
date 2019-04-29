initialize
setUp

	super setUp.
	self table: (BTRTableModel for: self defaultMatrix) copy.