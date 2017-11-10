*monticellotonel-gemstone-tests
testCanCreateTonelRepositoryFromUrl
true ifTrue: [ ^ self ].
	repository := MCRepository fromUrl: (self homeDirectoryUrl scheme: #tonel) asString.
	self assert: (repository isKindOf: TonelMCRepository).
	
	repository := MCRepository fromUrl: 'tonel://.'.
	self assert: (repository isKindOf: TonelMCRepository)
