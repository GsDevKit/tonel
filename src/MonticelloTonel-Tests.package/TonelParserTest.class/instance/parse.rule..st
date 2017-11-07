private
parse: aString rule: rule
  | parser |
  parser := TonelParser parseString: aString.
  ^ parser perform: rule