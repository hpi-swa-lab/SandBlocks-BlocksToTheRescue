instance creation
on: aBTRTableModel

	^ self basicNew
		table: aBTRTableModel;
		in: [:instance | aBTRTableModel addDependent: instance];
		initialize;
		yourself