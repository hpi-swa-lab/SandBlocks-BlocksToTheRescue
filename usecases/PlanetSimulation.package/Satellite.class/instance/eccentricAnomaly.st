angular parameters
eccentricAnomaly

	^ (NewtonMethod
		formula: self eccentricAnomalyNewtonFormula
		startValue: self meanAnomaly
		accuracy: 0.00000001) calculate