*monticellotonel-gemstone-tests
testLoadAllFileNames
	| snapshot dir |
  	snapshot := self mockSnapshot.
  	dir := self newFileDirectorySnapshot: snapshot.
  	repository := TonelMCRepository new directory: dir.
  	self assert: repository allFileNames equals: #('Monticello-Mocks')