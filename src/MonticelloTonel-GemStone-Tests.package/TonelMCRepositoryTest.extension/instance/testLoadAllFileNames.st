*monticellotonel-gemstone-tests
testLoadAllFileNames
  | mem |
  true
    ifTrue: [ ^ self ].
  mem := self newMemoryFileSystem.
  repository := TonelMCRepository new directory: mem.
  self assert: repository allFileNames equals: #('MonticelloMocks')