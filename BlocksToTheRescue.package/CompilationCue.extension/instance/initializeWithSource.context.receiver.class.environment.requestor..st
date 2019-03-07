*BlocksToTheRescue
initializeWithSource: aTextOrString context: aContext receiver: recObject class: aClass environment: anEnvironment requestor: reqObject
	self initialize.
	source := (aTextOrString isKindOf: PositionableStream)
		ifTrue: [ aTextOrString ]
		ifFalse: [ (RWBinaryOrTextStream 
					on: aTextOrString
					from: 0
					to: aTextOrString size) ascii ].
	context := aContext.
	receiver := recObject.
	class := aClass.
	environment := anEnvironment.
	requestor := reqObject