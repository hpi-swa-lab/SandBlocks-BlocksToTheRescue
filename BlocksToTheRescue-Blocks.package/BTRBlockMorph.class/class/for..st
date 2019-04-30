instance creation
for: aBTRBlockModel

	^ self basicNew
		blockModel: aBTRBlockModel;
		in: [:instance | aBTRBlockModel addDependent: instance];
		initialize;
		yourself