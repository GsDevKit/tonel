*tonel-gemstone-core
onString: aString forReader: aTonelReader
  ^ self on: (ReadStreamPortable on: aString) forReader: aTonelReader
