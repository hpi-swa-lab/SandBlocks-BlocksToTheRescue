as yet unclassified
initialize

	| view |
	self playfield: TPlayfield new.
	view := TPlayfieldView new 
		setModel: self playfield;
		openInWorld;
		yourself.
	self playfield addDependent: view.