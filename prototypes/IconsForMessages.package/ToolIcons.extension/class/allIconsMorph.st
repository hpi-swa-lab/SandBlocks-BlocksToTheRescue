*IconsForMessages-Icons
allIconsMorph
	| morph pos |
	morph := BorderedMorph new
		color: Color transparent;
		name: 'ToolIcons Preview';
		yourself.
	pos := 0@0.
	self icons valuesDo: [:icon |
		| iconMorph |
			iconMorph := icon asMorph.
			morph addMorph: iconMorph.
			iconMorph position: pos.
			pos := pos translateBy: (icon width)@0].
	^ morph
		height: (self icons detectMax: [:icon | icon height]) height;
		width: pos x;
		yourself