updating
updateMorph 

	self positionQueue add: self globalMorphPosition.
	self queueAnimation: [(AnimCompositeAnimation new
		add: self turnAnimation;
		add: self moveAnimation;
		yourself)].