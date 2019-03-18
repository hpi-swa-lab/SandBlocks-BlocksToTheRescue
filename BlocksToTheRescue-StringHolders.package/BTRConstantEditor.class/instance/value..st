accessing
value: anObject

	"self morph perform: self setValueSelector with: anObject"
	self setValueSelector 
		value: self morph
		value: anObject