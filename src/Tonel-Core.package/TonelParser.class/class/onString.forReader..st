instance creation
onString: aString forReader: aTonelReader
  ^ self on: (self readStreamClass on: aString) forReader: aTonelReader
