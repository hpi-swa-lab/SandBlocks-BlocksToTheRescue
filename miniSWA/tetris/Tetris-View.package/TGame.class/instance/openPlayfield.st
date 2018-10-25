initialize-release
openPlayfield

	| view |
	self playfield: TPlayfield new.
	view := TPlayfieldView new 
		setModel: self playfield;
		yourself.
	self playfield addDependent: view.
	^ view.