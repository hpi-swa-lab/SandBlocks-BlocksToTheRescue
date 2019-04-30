comparing
= anObject	
	
	^ anObject class = self class and: [anObject code asText unstyled = self code asText unstyled]