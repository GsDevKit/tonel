*cypresstonel-gemstone-tests
newFileDirectorySnapshot: aSnapshot
  "This method assumes writer works. If it is broken (the tests should show it), this tests 
	 will break too."

  | dir |
  dir := self directory.
  (TonelCypressWriter on: dir) writeSnapshot: aSnapshot.
  ^ dir