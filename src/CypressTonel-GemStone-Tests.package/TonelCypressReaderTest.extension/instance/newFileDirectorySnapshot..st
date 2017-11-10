*cypresstonel-gemstone-tests
newFileDirectorySnapshot: aSnapshot
  "This method assumes writer works. If it is broken (the tests should show it), this tests 
	 will break too."

  | dir |
  dir := self directory.
  (TonelMCWriter on: dir) writeSnapshot: aSnapshot. "fo now, until we get a working cypress writer"
  ^ dir