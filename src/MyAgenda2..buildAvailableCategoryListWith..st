!MyAgenda2 methodsFor: 'toolbuilder' stamp: 'mva 3/15/2016 19:30'!
buildAvailableCategoryListWith: builder
	| listSpec |
	listSpec := builder pluggableListSpec new.
	listSpec
		model: self;
		list: #askCategories1ListLabels;
		getIndex: #askCategories1ListSelectedIndex;
		setIndex: #askCategories1ListSelectedIndex:.

	^listSpec
! !
