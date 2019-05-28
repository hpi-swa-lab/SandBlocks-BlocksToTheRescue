accessing
initializeParameterFields
	
	| parameterFieldWidth parameterFieldHeight parameterFieldSpacing frontSpacing |
	
	self parameterFields: OrderedCollection new.
	parameterFieldWidth := 50.
	parameterFieldHeight := 20.
	parameterFieldSpacing := 20.
	frontSpacing := 10.
	
	(self internalSymbol includesSubstring: ':')
		ifTrue: [
			(self internalSymbol subStrings: ':')
			doWithIndex: [:each :index | | parameterField |
					parameterField := TextMorph new
										extent: parameterFieldWidth @ parameterFieldHeight;
										position: (frontSpacing + ((index - 1) * (parameterFieldWidth + parameterFieldSpacing))) @ frontSpacing;
										backgroundColor: #V2;BTRColorModel;4F;Constant2;Dictionary;14;1;((Dictionary new));Color;18;1;(Color r: 1 g: 1 b: 1);;.
					self parameterFields add: parameterField.
					self addMorph: parameterField].
				
			self extent:
				(self parameterFields size * (parameterFieldWidth + parameterFieldSpacing)) @ (self extent y)].