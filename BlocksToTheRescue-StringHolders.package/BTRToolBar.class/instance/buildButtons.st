initialization
buildButtons

	(self tools collect: [ :specs | specs asDictionary ])
		do: [ :tool | | button |
			button := IconicButtonWithLabel new
				labelGraphic: (tool at: #icon)
				color: Color transparent
				andLabel: (tool at: #title) asMorph;
				target: self;
				color: Color transparent;
				actionSelector: (tool at: #action);
				setBalloonText: (tool at: #toolTip);
				hResizing: #spaceFill.
			self addMorph: button].