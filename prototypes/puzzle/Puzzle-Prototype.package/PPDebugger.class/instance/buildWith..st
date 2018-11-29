as yet unclassified
buildWith: aToolBuilder

	| windowSpec |
	windowSpec := self createWindowSpec: aToolBuilder.
	self buttonSpecs do: [ :each |
		windowSpec children add: (self createButtonSpec: each with: aToolBuilder)].
	
	self window: (aToolBuilder build: windowSpec).
	^ self window