testing
testMorphPosition

	self assert: 0 @ 0 equals: self morph position.
	self scanner displayLine: self line offset: 0 @ 0 leftInRun: 0.
	"width of 'foo' + padding = 18 px + 2 px'"
	self assert: 20 @ self textStyle leading equals: self morph position. 