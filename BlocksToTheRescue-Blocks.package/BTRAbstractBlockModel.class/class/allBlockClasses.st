insertion
allBlockClasses
	"This should be implemented in TBTRBlockModel, but that's not possible as you can't call class methods of a trait.
	Therefore it's implemented here instead, the next best thing."
	^ (TBTRBlockModel users gather: #withAllSubclasses)
		reject: #isAbstract