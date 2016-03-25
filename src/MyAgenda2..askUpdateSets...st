!MyAgenda2 methodsFor: 'view' stamp: 'mva 3/25/2016 19:02'!
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

	self askUpdateCategories4.
	self askUpdateCategories4List.
	self askUpdateCategories4ListLabels.
	self changed: #askCategories4ListLabels.

	self askUpdateCategories5.
	self askUpdateCategories5List.
	self askUpdateCategories5ListLabels.
	self changed: #askCategories5ListLabels.
! !
