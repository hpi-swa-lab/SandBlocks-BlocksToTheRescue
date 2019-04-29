instance creation
on: aBTRStringModel

	^ self basicNew
		blockModel: aBTRStringModel;
		in: [:instance | aBTRStringModel addDependent: instance];
		initialize;
		yourself 