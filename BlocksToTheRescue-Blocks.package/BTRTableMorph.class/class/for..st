instance creation
for: aBTRTableModel

	^ self basicNew
		tableModel: aBTRTableModel;
		in: [:instance | aBTRTableModel addDependent: instance];
		initialize;
		yourself