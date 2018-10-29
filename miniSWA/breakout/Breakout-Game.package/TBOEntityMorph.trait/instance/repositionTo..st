updating
repositionTo: aRelativePosition

	self center: ((aRelativePosition
		scaleBy: self gameField extent)
		translateBy: self gameField position).