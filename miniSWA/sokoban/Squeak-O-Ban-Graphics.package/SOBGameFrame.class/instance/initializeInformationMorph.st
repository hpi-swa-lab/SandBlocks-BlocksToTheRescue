initialize-release
initializeInformationMorph 

	self 
		informationMorph: SOBInformationMorph new.
	self informationMorph 
		shrinkWrap;
		addDependent: self.
	self informationWrapper addMorph: self informationMorph.