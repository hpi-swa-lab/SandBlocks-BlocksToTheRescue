instance creation
on: aBTRTable

	^ self basicNew
		table: aBTRTable;
		in: [:instance | aBTRTable addDependent: instance];
		initialize;
		yourself