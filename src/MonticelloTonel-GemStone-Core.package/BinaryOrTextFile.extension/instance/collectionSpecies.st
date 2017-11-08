*monticellotonel-gemstone-core
collectionSpecies
	"Answer the species of collection into which the receiver can stream"
	
	^ self isBinary
		ifTrue: [ ByteArray ]
		ifFalse: [ String ]
