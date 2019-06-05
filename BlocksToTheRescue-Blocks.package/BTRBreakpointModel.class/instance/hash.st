accessing
hash

	^ (self class hash bitXor: self enabled hash) bitXor: self once hash