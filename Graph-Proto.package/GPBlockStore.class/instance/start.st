build
start

	| blockModel |
	blockModel := GPBlockModel new.
	blockModel addOutputFlow.
	blockModel role: #start.
	^ (GPBlockView for: blockModel)