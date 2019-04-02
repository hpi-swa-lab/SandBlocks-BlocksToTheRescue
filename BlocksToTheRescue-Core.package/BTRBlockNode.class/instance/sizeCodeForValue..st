code generation
sizeCodeForValue: encoder
	
	self reserve: encoder.	"resolves index of block-literal"
	selectorNode reserve: encoder.
	^ 2 + (selectorNode sizeCode: encoder args: 1 super: false)