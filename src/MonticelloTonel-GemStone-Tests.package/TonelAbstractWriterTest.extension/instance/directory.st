*monticellotonel-gemstone-tests
directory
	directory ifNil:
		[ directory := GsFile _expandEnvVariable: 'PWD' isClient: false ].
	^ directory