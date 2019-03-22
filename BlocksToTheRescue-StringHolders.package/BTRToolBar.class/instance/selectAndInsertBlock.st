actions
selectAndInsertBlock

	self selectBlockModelClass
		ifNotNil: [ :modelClass | self insertBlock: modelClass new].