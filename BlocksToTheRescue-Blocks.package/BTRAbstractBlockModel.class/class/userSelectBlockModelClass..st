insertion
userSelectBlockModelClass: message
	"This should be implemented in TBTRBlockModel, but that's not possible as you can't call class methods of a trait.
	Therefore it's implemented here instead, the next best thing."
	^ UIManager default
		chooseFrom: (self allBlockClasses collect: [:class | class displayName])
		values: self allBlockClasses
		title: message