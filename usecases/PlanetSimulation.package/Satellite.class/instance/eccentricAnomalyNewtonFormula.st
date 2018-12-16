as yet unclassified
eccentricAnomalyNewtonFormula

	^ [:currentEccentricAnomaly |
		currentEccentricAnomaly - ((currentEccentricAnomaly - (self eccentricity * currentEccentricAnomaly sin) - self meanAnomaly) / (1 - (self eccentricity * currentEccentricAnomaly cos)))]