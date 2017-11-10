"
SampleTest has three tests:

* **testError** throws a MNU
* **testFailure** does not pass
* **testPasses** passes

"
Class {
	#name : #SampleTest,
	#superclass : #TestCase,
	#category : #Sample-Tests
}

{ #category : #tests }
SampleTest >> testError [
    self should: [ SampleCore perform: #'foolish' ] raise: Error
]

{ #category : #tests }
SampleTest >> testFailure [
    self deny: Object new isSample
]

{ #category : #tests }
SampleTest >> testPasses [
    self assert: SampleCore new isSample
]
