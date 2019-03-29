accessing
getSourceCopied: aBoolean
	
	^ self sourceHeader, '
	', (self sourceBodyCopied: aBoolean)