asserting
shouldParse: aString rule: rule raise: error
  | parser |
  parser := TonelParser onString: aString  forReader: self.
  self should: [ parser perform: rule ] raise: error