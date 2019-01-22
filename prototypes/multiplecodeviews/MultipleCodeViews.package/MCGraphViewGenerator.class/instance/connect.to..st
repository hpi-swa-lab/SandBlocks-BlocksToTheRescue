as yet unclassified
connect: aGPBlockView to: anotherGPBlockView

	anotherGPBlockView ifNotNil:[
		aGPBlockView blockModel outputFlows first
			getDrop: anotherGPBlockView blockModel inputFlows first]