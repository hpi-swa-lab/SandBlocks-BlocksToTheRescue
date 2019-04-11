instance creation
on: aBTRTableModel

	^ self basicNew
		blockModel: aBTRTableModel;
		in: [:instance | aBTRTableModel addDependent: instance];
		initialize;
		yourself