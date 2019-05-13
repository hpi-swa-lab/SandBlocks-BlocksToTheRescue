submorphs-add/remove
delete

	super delete.
	self stateMachineModel removeDependent: self.
	self breakDependents.