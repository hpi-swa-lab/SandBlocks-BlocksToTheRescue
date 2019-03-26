block methods
askForBlockModel

	^ (UIManager default
		chooseFrom: (self availableBlockModelClasses collect: [:class | class name])
		values: self availableBlockModelClasses
		title: 'Select block type to convert to (this will replace the content of the method)')
			ifNotNil: [:blockModelClass | 
				blockModelClass 
					on: self method methodClass
					selector: self method selector]