accessing
chooseSpecification
	self specification: (
			UIManager default 
					chooseFrom: { self textFor: #defaultSpecification . self textFor: #turtleLand . self textFor: #lavaLand } 
					values:  { DNMLevelSpecification default . DNMLevelSpecification turtleLand . DNMLevelSpecification lavaLand }
					title: (self textFor: #chooseSpecification)).