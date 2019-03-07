accessing
model: anObject

	"The model holds the constant"
	model ifNotNil: [model removeDependent: self].
	model := anObject.
	anObject ifNotNil: [anObject addDependent: self].