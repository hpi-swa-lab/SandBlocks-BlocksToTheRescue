updating
buildViewData

	^ Dictionary new
			at: #extent put: self extent;
			at: #states put: (Dictionary newFrom: (self stateMorphs
				collect: [:sm | sm state name -> sm buildViewData]));
			at: #transitions put: (Dictionary newFrom: (self transitionMorphs
				collect: [:tm |  (tm transition sourceStateName -> tm transition name) -> tm buildViewData]));
			yourself