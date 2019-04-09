toolbuilder
serializedTextSpec

	^ self codeTextSpec
		getText: #contentsSerialized;
		setText: nil;
		readOnly: true;
		stylerClass: SHTextStyler