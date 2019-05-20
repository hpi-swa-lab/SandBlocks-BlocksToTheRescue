accessing
model: aBTRStateMachineModel
	self removeDependent: model.
	model := aBTRStateMachineModel.
	self addDependent: model.