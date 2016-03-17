!MyAgenda2 methodsFor: 'toolbuilder' stamp: 'mva 3/15/2016 19:17'!
buildAndCategoryListWith: builder
	| listSpec |
	listSpec := builder pluggableListSpec new.
	listSpec
		model: self;
		list: #askAndCategoriesListLabels;
		getIndex: #askAndCategoriesListSelectedIndex;
		setIndex: #askAndCategoriesListSelectedIndex:.

	^listSpec
! !
