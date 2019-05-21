initialization
initializeSlider

	self slider: (BTRSlider 
		on: self blockModel
		getValue: #value
		setValue: #value:
		min: self blockModel minimumValue
		max: self blockModel maximumValue
		quantum: self blockModel quantum).