as yet unclassified
blockFor: statement connectedTo: aGPBlockView

	|block|
	block := GPBlockStore new normie openInWorld.
	block position: 1000@100.
	block blockModel action: (Compiler evaluate: '[', (self codeStringFor: statement), ']').
	aGPBlockView ifNotNil: [
		block x: aGPBlockView x - 100.
		self connect: block to: aGPBlockView].
	
	^ block