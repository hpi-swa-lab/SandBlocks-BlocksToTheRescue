as yet unclassified
previewIcon
	
	"We use Smalltalk at: instead of calling the class directly because of cyclic dependencies"
	^ Smalltalk at: #BTRIcons
		ifPresent: [:icons | icons defaultMorphIcon]
		ifAbsent: [ToolIcons morph]