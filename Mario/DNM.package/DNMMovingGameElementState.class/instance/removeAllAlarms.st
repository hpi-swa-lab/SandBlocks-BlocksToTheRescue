alarm
removeAllAlarms
	requestedAlarms do: [:anAlarmSelector |
		self removeAlarm: anAlarmSelector].
	