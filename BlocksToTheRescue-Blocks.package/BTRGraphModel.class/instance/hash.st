as yet unclassified
hash

	^ (self selector hash bitXor: self nodes hash) bitXor: self edges hash