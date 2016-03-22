!MyAgenda2 methodsFor: 'toolbuilder' stamp: 'mva 3/18/2016 20:42'!
buildNotCategoryButtonWith: builder
	| panelSpec i |
	panelSpec := builder pluggablePanelSpec new
		layout: #horizontal;
		spacing: -1;
		children: OrderedCollection new;
		yourself.

	i := builder pluggableButtonSpec new.
	i
			horizontalResizing: #shrinkWrap;
			model: self;
			label: 'Not';
			help: 'Select "None of these" to add groups from "Groups Available" to the list below or to remove groups from the list below and place them back in "Groups Available" or to move groups from "All of these" to "None of these"' translated;
			state: #askNotCategoriesSelected;
			action: #askNotCategoriesSelectedCommand.


	panelSpec children addAll: {
		i.
		builder pluggableSpacerSpec new.
	}.

	^panelSpec
! !
