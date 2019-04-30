accessing
classesToTest

	 ^ BTRConstantModel allSubclasses select: [:each | each name startsWith: 'BTR']