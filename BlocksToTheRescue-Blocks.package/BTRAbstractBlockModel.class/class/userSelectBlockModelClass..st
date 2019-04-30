insertion
userSelectBlockModelClass: message
	"This should be implemented in TBTRBlockModel, but that's not possible as you can't call class methods of a trait.
	Therefore it's implemented here instead, the next best thing."
	(self allBlockClasses sorted: [:a :b | a name <= b name])
		in: [:classes | ^ UIManager default
			chooseFrom: (classes collect: [:class | class displayName])
			values: classes
			title: message]