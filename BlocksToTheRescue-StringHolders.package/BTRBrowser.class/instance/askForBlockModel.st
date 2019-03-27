block methods
askForBlockModel

	^ (UIManager default
		chooseFrom: (self availableBlockModelClasses collect: [:class | class name])
		values: self availableBlockModelClasses
		title: 'Block Type?
(Erases previous method content)')
			ifNotNil: [:blockModelClass | 
				blockModelClass 
					on: self method methodClass
					selector: self method selector]