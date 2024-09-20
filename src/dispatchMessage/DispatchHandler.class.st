Class {
	#name : 'DispatchHandler',
	#superclass : 'Object',
	#category : 'dispatchMessage',
	#package : 'dispatchMessage'
}

{ #category : 'as yet unclassified' }
DispatchHandler >> concatTwoStrings: str1 and: str2 [  
     ^ str1 , ' ', str2

]

{ #category : 'as yet unclassified' }
DispatchHandler >> dispatcher: arg1 and: arg2 [ 
        (arg1 isNumber and: [arg2 isNumber])
            ifTrue: [ ^self multiplyTwoNumbers: arg1 and: arg2 ].
        
        (arg1 isString and: [arg2 isString])
            ifTrue: [ ^self concatTwoStrings: arg1 and: arg2 ].

        ^ 'erreur'
    
]

{ #category : 'as yet unclassified' }
DispatchHandler >> multiplyTwoNumbers: int1 and: int2 [  
    ^  int1 * int2


]
