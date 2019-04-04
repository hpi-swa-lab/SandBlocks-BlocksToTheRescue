initialization
initializeUI
	self ui: (DNMUI new
		width: self width;
		healthModel: mario healthModel;
		scoreModel: mario scoreModel;
		yourself).
	self addMorph: self ui.
	
