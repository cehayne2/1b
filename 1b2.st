#!/usr/bin/env gst

! Object methods !
oo
  Transcript nextPutAll: self printString; 
             cr!
!

! Object methods !
eject: aBlock [
  | newCollection |
  newCollection := aBlock select: [:element | (aBlock value: element) ifTrue: [newCollection add: element]].
  
  ^newCollection
]


!!

"y := x select: [:a | a > $a]. --> return all elements that meet condition"

y := #(1 2 3) eject: [:x | x > 1.5].
y oo!


"Write your own reject: method called eject: that does the same thing as reject: but do so calling select.
e.g.
#(1 2 3) eject: [:x | x > 1.5]
returns (1)"

"select: aBlock [
	//Answer a new instance of a Collection containing all the elements
	 in the receiver which, when passed to aBlock, answer true

	<category: 'enumeration'>
	| newCollection |
	newCollection := self copyEmpty.
	self 
	    do: [:element | (aBlock value: element) ifTrue: [newCollection add: element]].
	^newCollection
    ]

    reject: aBlock [
	//Answer a new instance of a Collection containing all the elements
	 in the receiver which, when passed to aBlock, don't answer true

	<category: 'enumeration'>
	| newCollection |
	newCollection := self copyEmpty.
	self 
	    do: [:element | (aBlock value: element) ifFalse: [newCollection add: element]].
	^newCollection
    ]
"
