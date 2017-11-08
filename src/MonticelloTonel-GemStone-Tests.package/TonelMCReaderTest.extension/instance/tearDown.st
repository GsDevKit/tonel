*monticellotonel-gemstone-tests
tearDown
	self directory ifNotNil: [:dir | dir recursiveDelete ].
	super tearDown.
