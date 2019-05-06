initialization
initializeText

	self textMorph: (PluggableTextMorphPlus new 
									height: 20;
									setText: self code;
									model: Model new;
									styler: SHTextStylerST80 new;
									wantsFrameAdornments: false;
									yourself).
	self addMorph: self textMorph.
	self textMorph y: self y