*cypresstonel-gemstone-tests
tearDown
	self directory ifNotNil: [:dir | CypressFileUtilities current deleteAll: dir ].
	super tearDown.
