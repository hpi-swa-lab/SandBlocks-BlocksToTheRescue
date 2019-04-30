instance creation
for: aBTRTableCell

	^ self basicNew
		model: aBTRTableCell;
		in: [:instance | aBTRTableCell addDependent: instance];
		initialize;
		yourself