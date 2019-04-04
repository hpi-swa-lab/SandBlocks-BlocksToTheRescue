*BlocksToTheRescue-Core
btrStoreOn: aWriteStream

	numerator storeOn: aWriteStream base: 10.
	aWriteStream nextPut: $/.
	denominator storeOn: aWriteStream base: 10.