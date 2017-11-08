*monticellotonel-gemstone-tests
testLoadAllFileNames
  | mem |
  mem := self newMemoryFileSystem.
  repository := TonelMCRepository new directory: mem.
  self assert: repository allFileNames equals: #('MonticelloMocks')