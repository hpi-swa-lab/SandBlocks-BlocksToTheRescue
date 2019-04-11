instance creation
on: aBTRTableModel

	^ self basicNew
		tableModel: aBTRTableModel;
		in: [:instance | aBTRTableModel addDependent: instance];
		initialize;
		yourself