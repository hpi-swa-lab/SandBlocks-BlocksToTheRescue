initialization
startNewGame

	gameWorld 
		ifNil: [
			gameWorld := (DNMGameWorld newWithSpecification: self specification)
				position: #V2;BTRNumberModel;51;N1;SmallInteger;3;1;0;SmallInteger;3;1;0;SmallInteger;5;1;100;SmallInteger;3;1;1;; @ #V2;BTRNumberModel;52;N1;SmallInteger;4;1;20;SmallInteger;3;1;0;SmallInteger;5;1;100;SmallInteger;3;1;1;;;
				startNewGame;
				yourself].