utils
shiftTabKeyEvents

	^ self createDownStrokeUpKeyboardEventsFor: ({
		#keyValue -> 9. "tab key code"
		#buttons -> 8 "shift modifier"} as: Dictionary)