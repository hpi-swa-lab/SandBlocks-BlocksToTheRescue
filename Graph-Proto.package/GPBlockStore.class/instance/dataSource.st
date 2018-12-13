build
dataSource

	| blockModel |
	blockModel := GPBlockModel new.
	blockModel addOutputData .
	^ (GPBlockView for: blockModel)