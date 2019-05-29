code generation
sizeCodeForValue: encoder
	
	self reserve: encoder.	"resolves index of block-literal"
	selectorNode reserve: encoder.
	^ (selectorNode sizeCode: encoder args: 1 super: false) + (encoder sizePushLiteral: index) + 1 "1 is needed beacuse we add the thisContext"