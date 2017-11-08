*monticellotonel-gemstone-tests
newMemoryFileSystem
  "This method assumes writer works. If it is broken (the tests should show it), this tests 
	 will break too."

  | mem |
  mem := FileSystem memory root.
  (TonelMCWriter on: mem) writeSnapshot: self mockSnapshot.
  ^ mem