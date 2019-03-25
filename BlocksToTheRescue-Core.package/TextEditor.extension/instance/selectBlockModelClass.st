*BlocksToTheRescue-Core
selectBlockModelClass

	 ^ UIManager default
		chooseFrom: (self availableBlockModelClasses collect: [:class | class name])
		values: self availableBlockModelClasses
		title: 'Select block to insert'