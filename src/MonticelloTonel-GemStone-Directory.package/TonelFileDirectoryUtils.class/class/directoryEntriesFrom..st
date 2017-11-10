utilities
directoryEntriesFrom: aDirectory
  "Answer fully qualified paths to the contents of aDirectory."

  ^ (aDirectory entries collect: [ :each | each name ]) sorted