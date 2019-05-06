comparing
hash

	^ ((self constructor hash 
		bitXor: (self stringOf: self getValueSelector) hash) 
		bitXor: (self stringOf: self setValueSelector) hash)
		bitXor: (self stringOf: self valueChangedSelector) hash