initialization
startNewGame

	gameWorld 
		ifNil: [
			gameWorld := (DNMGameWorld newWithSpecification: self specification)
				position: #V2;BTRNumberModel;1D;Constant1;SmallInteger;3;1;0;; @ #V2;BTRNumberModel;1E;Constant1;SmallInteger;4;1;20;;;
				startNewGame;
				yourself].