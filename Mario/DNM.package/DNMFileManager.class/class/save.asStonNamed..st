loading
save: anObject asStonNamed: aFileName
	(self fileStreamNamed: aFileName) fullName asReference
   		fileStreamDo: [:stream |
     			DNMSTON put: anObject onStreamPretty: stream].