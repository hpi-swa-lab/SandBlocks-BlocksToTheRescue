initialization
initializeSlider

	self slider: (BTRSlider 
		on: self blockModel
		getValue: #contents
		setValue: #contents:
		min: self minimumValue
		max: self maximumValue
		quantum: self quantum).
	"self slider
		hResizing: #spaceFill;
		vResizing: #spaceFill."