asserting
shouldParse: aString rule: rule raise: error
  | parser |
  parser := TonelParser onString: aString.
  self should: [ parser perform: rule ] raise: error