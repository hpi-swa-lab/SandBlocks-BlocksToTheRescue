initialization
initializeData

	self data do: [:column | 
		column do: [:date | | cell |
			cell := Morph new
				height: self cellHeight;
				width: self cellWidth;
				color: self cellColor;
				borderWidth: self cellBorderWidth;
				addMorph:  (StringMorph contents: date printString).
			self addMorph: cell]].