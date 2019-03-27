as yet unclassified
sizeCodeForValue: encoder
	
	self reserve: encoder.	"resolves index of block-literal"
	^ 2						"block(1) + value(1)"