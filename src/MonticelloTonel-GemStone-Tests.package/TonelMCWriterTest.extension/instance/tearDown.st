*monticellotonel-gemstone-tests
tearDown
	self directory ifNotNil: [:dir | dir exists ifTrue: [ dir recursiveDelete ] ].
	super tearDown.
