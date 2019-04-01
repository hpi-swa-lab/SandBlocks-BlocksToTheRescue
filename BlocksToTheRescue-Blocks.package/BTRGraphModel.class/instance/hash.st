as yet unclassified
hash

	^ (super hash bitXor: self nodes hash) bitXor: self edges hash