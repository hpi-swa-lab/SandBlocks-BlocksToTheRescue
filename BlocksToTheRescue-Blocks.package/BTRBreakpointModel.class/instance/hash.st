accessing
hash

	^ (self class hash bitXor: self enabled) bitXor: self once