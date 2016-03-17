!MyAgenda2 methodsFor: 'toolbuilder' stamp: 'mva 3/15/2016 20:00'!
buildItemListWith: builder
	| listSpec |
	listSpec := builder pluggableListSpec new.
	listSpec
		model: self;
		list: #askItems2ListLabels;
		getIndex: #askItems2ListSelectedIndex;
		setIndex: #askItems2ListSelectedIndex:.

	^listSpec
! !
