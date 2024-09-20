Class {
	#name : 'DispatchTest',
	#superclass : 'TestCase',
	#category : 'dispatchMessage',
	#package : 'dispatchMessage'
}

{ #category : 'tests' }
DispatchTest >> testConcatTwoStringsWork [ 
        self assert: (DispatchHandler new dispatcher: 4 and: 5)
            equals: 20
    

]

{ #category : 'tests' }
DispatchTest >> testMultiplyTwoNumbersWork [ 
         self assert: (DispatchHandler new dispatcher: 'hello' and: 'world')
            equals: 'hello world'
    
]

{ #category : 'tests' }
DispatchTest >> testUnsupportedCase [ 
        self assert: (DispatchHandler new dispatcher: 8 and: 'hello')
            equals: 'erreur'
]
