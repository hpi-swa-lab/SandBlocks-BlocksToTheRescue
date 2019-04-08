interface-accessing
= other
	
	"Please override and call super in users"
	^ other class = self class 
		and: [self selector = other selector]
		and: [self methodClass = other methodClass]