comparing
hash

	^ (self name hash
		bitXor: self sourceStateName hash)
		bitXor: self targetStateName hash