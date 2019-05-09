block methods
installBlockMethodFrom: aBTRBlocketModel

	BTRBlocketMethod 
		compile: aBTRBlocketModel 
		in: self method methodClass 
		signature: self contents.