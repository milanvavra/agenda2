!MyAgenda2 methodsFor: 'controller' stamp: 'mva 3/16/2016 01:43'!
askItems2ListSelectedIndex: tmpIndex

	(thisContext sender sender sender methodSelector =  #keyStroke:
	or: [tmpIndex = 0]) ifFalse: [

	varItems2ListSelectedIndex := tmpIndex.
	self
		changed: #askItems2ListHasSelectedIndex;
		changed: #askItems2ListSelectedIndex.

	self askUpdateWindow.

	^varItems2ListSelectedIndex
	]
! !
