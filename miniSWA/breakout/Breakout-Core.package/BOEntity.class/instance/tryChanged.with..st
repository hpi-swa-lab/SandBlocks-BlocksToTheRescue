updating
tryChanged: anAspect with: aNewValue

	(self perform: anAspect) ~= aNewValue
		ifTrue: [self changed: anAspect with: aNewValue].