instance creation
for: aBTRBlockModel

	^ self basicNew
		attachBlockModel: aBTRBlockModel;
		in: [:instance | aBTRBlockModel addDependent: instance];
		initialize;
		yourself