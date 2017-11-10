initialization
initialize
	super initialize.
	self prettyPrint: true.
	aliases := { TonelWriter orderedDictionaryClass -> nil } asDictionary