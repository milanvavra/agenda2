!MyAgenda2 methodsFor: 'toolbuilder' stamp: 'mva 4/10/2016 01:29'!
buildSelectedItemListWith: builder
	| listSpec |
	listSpec := builder pluggableListSpec new.
	listSpec
		model: self;
		list: #askSelectedItemListLabels;
		getIndex: #askSelectedItemListSelectedIndex;
		setIndex: #askSelectedItemListSelectedIndex:.

	^listSpec
! !
