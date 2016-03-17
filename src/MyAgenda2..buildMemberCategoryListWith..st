!MyAgenda2 methodsFor: 'toolbuilder' stamp: 'mva 3/15/2016 19:35'!
buildMemberCategoryListWith: builder
	| listSpec |
	listSpec := builder pluggableListSpec new.
	listSpec
		model: self;
		list: #askCategories4ListLabels;
		getIndex: #askCategories4ListSelectedIndex;
		setIndex: #askCategories4ListSelectedIndex:.

	^listSpec
! !
