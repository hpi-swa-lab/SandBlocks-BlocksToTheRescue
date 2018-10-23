initialize-release
initializeReload

	self reload: (SimpleButtonMorph new
		label: 'Q';
		actionSelector: #reload).
	self addMorph: self reload.