!MyAgenda2 methodsFor: 'toolbuilder' stamp: 'mva 3/15/2016 19:27'!
buildNotCategoryListWith: builder
	| listSpec |
	listSpec := builder pluggableListSpec new.
	listSpec
		model: self;
		list: #askNotCategoriesListLabels;
		getIndex: #askNotCategoriesListSelectedIndex;
		setIndex: #askNotCategoriesListSelectedIndex:.

	^listSpec
! !
