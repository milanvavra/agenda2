!MyAgenda2 methodsFor: 'toolbuilder' stamp: 'mva 3/15/2016 19:37'!
buildNotMemberCategoryListWith: builder
	| listSpec |
	listSpec := builder pluggableListSpec new.
	listSpec
		model: self;
		list: #askCategories5ListLabels;
		getIndex: #askCategories5ListSelectedIndex;
		setIndex: #askCategories5ListSelectedIndex:.

	^listSpec
! !
