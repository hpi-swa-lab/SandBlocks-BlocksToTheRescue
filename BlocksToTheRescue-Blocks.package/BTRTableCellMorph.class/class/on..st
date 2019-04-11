instance creation
on: aBTRTableCell

	^ self basicNew
		model: aBTRTableCell;
		in: [:instance | aBTRTableCell addDependent: instance];
		initialize;
		yourself