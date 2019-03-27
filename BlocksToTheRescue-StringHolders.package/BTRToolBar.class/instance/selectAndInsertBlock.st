actions
selectAndInsertBlock

	self canInsertBlock ifTrue: [
		self selectBlockModelClass
			ifNotNil: [ :modelClass | self insertBlock: modelClass new]].