*monticellotonel-gemstone-core
collectionSpecies
	"Answer the species of collection into which the receiver can stream"
	
	^ self _isBinary
		ifTrue: [ ByteArray ]
		ifFalse: [ String ]
