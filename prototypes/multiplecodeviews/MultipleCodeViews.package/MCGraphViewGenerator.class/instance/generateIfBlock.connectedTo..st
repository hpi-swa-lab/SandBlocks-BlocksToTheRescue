as yet unclassified
generateIfBlock: aMessageNode connectedTo: aGPBlockView

	|block trueBlock falseBlock|
	block := GPBlockStore new ifBlock openInWorld.
	block blockModel action: (Compiler evaluate: '[', (self codeStringFor: aMessageNode receiver), ']').
	trueBlock := aMessageNode arguments first accept: self.
	self connect: (self lastBlockInChain: trueBlock) to: aGPBlockView.
	falseBlock := aMessageNode arguments second accept: self.
	self connect: (self lastBlockInChain: falseBlock) to: aGPBlockView.
	block position: trueBlock position - (100 @ 0).
	falseBlock y: trueBlock y - 100.
	block blockModel outputFlows second
		getDrop: trueBlock blockModel inputFlows first.
	block blockModel outputFlows first
		getDrop: falseBlock blockModel inputFlows first.

	^ block