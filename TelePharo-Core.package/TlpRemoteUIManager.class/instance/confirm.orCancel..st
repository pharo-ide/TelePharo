ui-requests
confirm: aString orCancel: cancelBlock

	^self requestUserBy: [:ui | ui confirm: aString orCancel: cancelBlock]