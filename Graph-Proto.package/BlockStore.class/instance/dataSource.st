build
dataSource

	| blockModel |
	blockModel := BlockModel new.
	blockModel addOutputData .
	^ (BlockView for: blockModel)