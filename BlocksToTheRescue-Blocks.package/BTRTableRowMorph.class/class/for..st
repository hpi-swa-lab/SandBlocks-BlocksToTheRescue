instance creation
for: aBTRTableCollection

	^ self basicNew
		rowModel: aBTRTableCollection;
		in: [:instance | aBTRTableCollection addDependent: instance];
		initialize;
		yourself