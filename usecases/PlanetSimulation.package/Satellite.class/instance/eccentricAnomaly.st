angular parameters
eccentricAnomaly

	^ (NewtonMethod
		formula: self eccentricAnomalyNewtonFormula
		startValue: self meanAnomaly
		accuracy: 0.1**10) calculate