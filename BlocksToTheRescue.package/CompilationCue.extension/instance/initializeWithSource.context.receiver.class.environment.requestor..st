*BlocksToTheRescue
initializeWithSource: aTextOrString context: aContext receiver: recObject class: aClass environment: anEnvironment requestor: reqObject
	self initialize.
	source := (aTextOrString isKindOf: PositionableStream)
		ifTrue: [ aTextOrString ]
		ifFalse: [ReadStream 
					on: aTextOrString
					from: 0
					to: aTextOrString size ].
	context := aContext.
	receiver := recObject.
	class := aClass.
	environment := anEnvironment.
	requestor := reqObject