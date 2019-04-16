as yet unclassified
hash

	^ (self value hash
		bitXor: self rowIndex) 
		bitXor: self columnIndex