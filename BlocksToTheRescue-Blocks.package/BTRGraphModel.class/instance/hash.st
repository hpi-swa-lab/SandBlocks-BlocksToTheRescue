as yet unclassified
hash

	^ (self class hash bitXor: self nodes hash) bitXor: self edges hash