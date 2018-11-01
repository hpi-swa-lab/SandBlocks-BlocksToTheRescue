as yet unclassified
initialize

	|view|
	self playfield: TPlayfield new.
	view := TPlayfieldView new.
	view
		openInWorld;
		setModel: self playfield.
	self playfield addDependent: view.