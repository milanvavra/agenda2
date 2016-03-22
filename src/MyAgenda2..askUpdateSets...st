!MyAgenda2 methodsFor: 'view' stamp: 'mva 3/19/2016 00:16'!
askUpdateSets
	self askUpdateItems2.
	self askUpdateItems2List.
	self askUpdateItems2ListLabels.
	self changed: #askItems2ListLabels.

	self askUpdateCategories1.
	self askUpdateCategories1List.
	self askUpdateCategories1ListLabels.
	self changed: #askCategories1ListLabels.

	self askUpdateAndCategoriesList.
	self askUpdateAndCategoriesListLabels.
	self changed: #askAndCategoriesListLabels.

	self askUpdateNotCategoriesList.
	self askUpdateNotCategoriesListLabels.
	self changed: #askNotCategoriesListLabels.
! !
