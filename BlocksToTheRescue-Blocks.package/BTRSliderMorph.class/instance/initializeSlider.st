initialization
initializeSlider

	self slider: (BTRSlider 
		on: self blockModel
		getValue: #contents
		setValue: #contents:).