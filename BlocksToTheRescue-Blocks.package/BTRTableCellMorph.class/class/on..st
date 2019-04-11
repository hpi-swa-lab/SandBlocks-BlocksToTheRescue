instance creation
on: aBTRTableCell

	^ self basicNew
		cellModel: aBTRTableCell;
		in: [:instance | aBTRTableCell addDependent: instance];
		initialize;
		yourself