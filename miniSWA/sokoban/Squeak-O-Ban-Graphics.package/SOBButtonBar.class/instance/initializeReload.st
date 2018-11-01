initialize-release
initializeReload

	self reload: (SimpleButtonMorph new
		label: 'Q';
		actionSelector: #reload;
		yourself).
	self addMorph: self reload.